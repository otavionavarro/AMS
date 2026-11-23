<?php
require "conexao.php";
require "funcoes.php";

$id = filter_input(INPUT_GET, "id", FILTER_VALIDATE_INT);
if (!$id) { http_response_code(400); exit("Identificador inválido."); }

$busca = $pdo->prepare("SELECT id, nome, email, turma_id FROM alunos WHERE id = :id");
$busca->execute([":id" => $id]);
$aluno = $busca->fetch();
if (!$aluno) { http_response_code(404); exit("Aluno não encontrado."); }

$turmas = listarTurmas($pdo);
$erro = "";
$nome = $aluno["nome"];
$email = $aluno["email"];
$turmaId = $aluno["turma_id"];

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    validarToken();
    $nome = trim($_POST["nome"] ?? "");
    $email = trim($_POST["email"] ?? "");
    $turmaId = filter_input(INPUT_POST, "turma_id", FILTER_VALIDATE_INT);

    if ($nome === "" || mb_strlen($nome) > 100) {
        $erro = "Digite um nome com até 100 caracteres.";
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL) || strlen($email) > 150) {
        $erro = "Digite um e-mail válido.";
    } elseif (!$turmaId || !turmaCadastrada($pdo, (int)$turmaId)) {
        $erro = "Escolha uma turma válida.";
    } else {
        try {
            $update = $pdo->prepare(
                "UPDATE alunos SET nome = :nome, email = :email, turma_id = :turma
                 WHERE id = :id"
            );
            $update->execute([
                ":nome" => $nome, ":email" => $email,
                ":turma" => $turmaId, ":id" => $id
            ]);
            header("Location: listar.php?mensagem=" . urlencode("Dados do aluno atualizados."));
            exit;
        } catch (PDOException $e) {
            $erro = "Não foi possível atualizar. Confira se o e-mail já está cadastrado.";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head><meta charset="UTF-8"><title>Editar aluno</title></head>
<body>
<h1>Editar aluno</h1>
<?php if ($erro): ?><p><?= h($erro) ?></p><?php endif; ?>
<form method="post">
    <input type="hidden" name="csrf_token" value="<?= h($_SESSION["csrf_token"]) ?>">
    <p><label>Nome: <input name="nome" maxlength="100" required value="<?= h($nome) ?>"></label></p>
    <p><label>E-mail: <input type="email" name="email" maxlength="150" required value="<?= h($email) ?>"></label></p>
    <p><label>Turma:
        <select name="turma_id" required>
            <?php foreach ($turmas as $turma): ?>
                <option value="<?= h($turma["id"]) ?>" <?= (string)$turmaId === (string)$turma["id"] ? "selected" : "" ?>>
                    <?= h($turma["nome"]) ?>
                </option>
            <?php endforeach; ?>
        </select>
    </label></p>
    <button type="submit">Atualizar</button>
</form>
<p><a href="listar.php">Voltar</a></p>
</body>
</html>
