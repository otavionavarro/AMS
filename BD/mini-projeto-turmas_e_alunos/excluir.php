<?php
require "conexao.php";
require "funcoes.php";

if ($_SERVER["REQUEST_METHOD"] !== "POST") {
    http_response_code(405);
    exit("Método não permitido.");
}
validarToken();

$id = filter_input(INPUT_POST, "id", FILTER_VALIDATE_INT);
if ($id) {
    $delete = $pdo->prepare("DELETE FROM alunos WHERE id = :id");
    $delete->execute([":id" => $id]);
}
header("Location: listar.php?mensagem=" . urlencode("Operação concluída."));
exit;
