<?php
require "conexao.php";
require "funcoes.php";

$erro = "";
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    validarToken();
    $nomeTurma = trim($_POST["nome"] ?? "");
    if ($nomeTurma === "" || mb_strlen($nomeTurma) > 80) {
        $erro = "Informe um nome de turma com até 80 caracteres.";
    } else {
        try {
            $novo = $pdo->prepare("INSERT INTO turmas (nome) VALUES (:nome)");
            $novo->execute([":nome" => $nomeTurma]);
            header("Location: turmas.php?mensagem=" . urlencode("Turma cadastrada."));
            exit;
        } catch (PDOException $e) {
            $erro = "Não foi possível cadastrar. Talvez essa turma já exista.";
        }
    }
}
$consulta = $pdo->prepare(
    "SELECT t.id, t.nome, COUNT(a.id) AS total_alunos
     FROM turmas t LEFT JOIN alunos a ON a.turma_id = t.id
     GROUP BY t.id, t.nome ORDER BY t.nome"
);
$consulta->execute();
$turmas = $consulta->fetchAll();
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head><meta charset="UTF-8"><title>Turmas</title></head>
<body>
<h1>Gerenciar turmas</h1>
<?php if (isset($_GET["mensagem"])): ?><p><?= h($_GET["mensagem"]) ?></p><?php endif; ?>
<?php if ($erro): ?><p><?= h($erro) ?></p><?php endif; ?>
<form method="post">
    <input type="hidden" name="csrf_token" value="<?= h($_SESSION["csrf_token"]) ?>">
    <label>Nome da turma: <input name="nome" maxlength="80" required></label>
    <button type="submit">Cadastrar turma</button>
</form>
<h2>Turmas cadastradas</h2>
<ul>
<?php foreach ($turmas as $turma): ?>
    <li><?= h($turma["nome"]) ?> — <?= h($turma["total_alunos"]) ?> aluno(s)</li>
<?php endforeach; ?>
</ul>
<p><a href="listar.php">Voltar aos alunos</a></p>
</body>
</html>
