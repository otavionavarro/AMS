<?php
require "conexao.php";
require "funcoes.php";

$stmt = $pdo->prepare("SELECT titulo, url, finalidade FROM fontes ORDER BY titulo");
$stmt->execute();
$fontes = $stmt->fetchAll();
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head><meta charset="UTF-8"><title>Fontes do projeto</title></head>
<body>
<h1>Fontes utilizadas</h1>
<p>As referências também estão registradas na tabela <strong>fontes</strong> do banco de dados.</p>
<ul>
<?php foreach ($fontes as $fonte): ?>
    <li>
        <strong><?= h($fonte["titulo"]) ?></strong><br>
        <a href="<?= h($fonte["url"]) ?>" target="_blank" rel="noopener noreferrer"><?= h($fonte["url"]) ?></a><br>
        <?= h($fonte["finalidade"]) ?>
    </li>
<?php endforeach; ?>
</ul>
<p><a href="listar.php">Voltar</a></p>
</body>
</html>
