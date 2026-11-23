<?php
require "conexao.php";
require "funcoes.php";

/* JOIN associa cada aluno ao nome da turma correspondente. */
$sql = "SELECT a.id, a.nome, a.email, t.nome AS turma
        FROM alunos AS a
        INNER JOIN turmas AS t ON t.id = a.turma_id
        ORDER BY a.nome";
$stmt = $pdo->prepare($sql);
$stmt->execute();
$alunos = $stmt->fetchAll();

$turmas = listarTurmas($pdo);
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Escola - alunos e turmas</title>
</head>
<body>
    <h1>Alunos e turmas</h1>
    <?php if (isset($_GET["mensagem"])): ?>
        <p><?= h($_GET["mensagem"]) ?></p>
    <?php endif; ?>

    <p><a href="cadastrar.php">Cadastrar aluno</a> |
       <a href="turmas.php">Gerenciar turmas</a> |
       <a href="fontes.php">Fontes utilizadas</a></p>

    <h2>Alunos cadastrados</h2>
    <?php if ($alunos): ?>
        <table border="1" cellpadding="7">
            <thead><tr><th>ID</th><th>Nome</th><th>E-mail</th><th>Turma</th><th>Ações</th></tr></thead>
            <tbody>
            <?php foreach ($alunos as $aluno): ?>
                <tr>
                    <td><?= h($aluno["id"]) ?></td>
                    <td><?= h($aluno["nome"]) ?></td>
                    <td><?= h($aluno["email"]) ?></td>
                    <td><?= h($aluno["turma"]) ?></td>
                    <td>
                        <a href="editar.php?id=<?= h($aluno["id"]) ?>">Editar</a>
                        <form action="excluir.php" method="post" style="display:inline">
                            <input type="hidden" name="csrf_token" value="<?= h($_SESSION["csrf_token"]) ?>">
                            <input type="hidden" name="id" value="<?= h($aluno["id"]) ?>">
                            <button type="submit">Excluir</button>
                        </form>
                    </td>
                </tr>
            <?php endforeach; ?>
            </tbody>
        </table>
    <?php else: ?>
        <p>Ainda não existem alunos cadastrados.</p>
    <?php endif; ?>

    <h2>Turmas existentes</h2>
    <ul>
    <?php foreach ($turmas as $turma): ?>
        <li><?= h($turma["nome"]) ?></li>
    <?php endforeach; ?>
    </ul>
</body>
</html>
