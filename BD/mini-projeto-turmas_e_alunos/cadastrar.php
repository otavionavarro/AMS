<?php
require "conexao.php";
require "funcoes.php";

$erro = "";
$nome = "";
$email = "";
$turmaId = "";
$turmas = listarTurmas($pdo);

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    validarToken();
    $nome = trim($_POST["nome"] ?? "");
    $email = trim($_POST["email"] ?? "");
    $turmaId = filter_input(INPUT_POST, "turma_id", FILTER_VALIDATE_INT);

    if ($nome === "" || mb_strlen($nome) > 100) {
        $erro = "Digite um nome com até 100 caracteres.";
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL) || strlen($email) > 150) {
        $erro = "Digite um endereço de e-mail válido.";
    } elseif (!$turmaId || !turmaCadastrada($pdo, (int)$turmaId)) {
        $erro = "Escolha uma turma cadastrada.";
    } else {
        try {
            $insert = $pdo->prepare(
                "INSERT INTO alunos (nome, email, turma_id)
                 VALUES (:nome, :email, :turma)"
            );
            $insert->execute([
                ":nome" => $nome,
                ":email" => $email,
                ":turma" => $turmaId
            ]);
            header("Location: listar.php?mensagem=" . urlencode("Aluno cadastrado."));
            exit;
        } catch (PDOException $e) {
            $erro = "Não foi possível cadastrar. Verifique se o e-mail já está em uso.";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head><meta charset="UTF-8"><title>Novo aluno</title></head>
<body>
<h1>Cadastrar aluno</h1>
<?php if ($erro): ?><p><?= h($erro) ?></p><?php endif; ?>
<form method="post">
    <input type="hidden" name="csrf_token" value="<?= h($_SESSION["csrf_token"]) ?>">
    <p><label>Nome: <input name="nome" maxlength="100" required value="<?= h($nome) ?>"></label></p>
    <p><label>E-mail: <input type="email" name="email" maxlength="150" required value="<?= h($email) ?>"></label></p>
    <p><label>Turma:
        <select name="turma_id" required>
            <option value="">Selecione</option>
            <?php foreach ($turmas as $turma): ?>
                <option value="<?= h($turma["id"]) ?>" <?= (string)$turmaId === (string)$turma["id"] ? "selected" : "" ?>>
                    <?= h($turma["nome"]) ?>
                </option>
            <?php endforeach; ?>
        </select>
    </label></p>
    <button type="submit">Salvar aluno</button>
</form>
<p><a href="listar.php">Voltar</a></p>
</body>
</html>
