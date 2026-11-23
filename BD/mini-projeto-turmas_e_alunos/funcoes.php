<?php
function h($valor): string {
    return htmlspecialchars((string)$valor, ENT_QUOTES, "UTF-8");
}

function validarToken(): void {
    $recebido = $_POST["csrf_token"] ?? "";
    $salvo = $_SESSION["csrf_token"] ?? "";

    if ($salvo === "" || !hash_equals($salvo, $recebido)) {
        http_response_code(403);
        exit("Solicitação inválida. Atualize a página e tente novamente.");
    }
}

function listarTurmas(PDO $pdo): array {
    $stmt = $pdo->prepare("SELECT id, nome FROM turmas ORDER BY nome");
    $stmt->execute();
    return $stmt->fetchAll();
}

function turmaCadastrada(PDO $pdo, int $turmaId): bool {
    $stmt = $pdo->prepare("SELECT id FROM turmas WHERE id = :id");
    $stmt->execute([":id" => $turmaId]);
    return $stmt->fetch() !== false;
}
