CREATE DATABASE IF NOT EXISTS escola
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE escola;

CREATE TABLE IF NOT EXISTS turmas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    turma_id INT NOT NULL,
    CONSTRAINT fk_alunos_turmas
      FOREIGN KEY (turma_id) REFERENCES turmas(id)
      ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

-- Fontes consultadas durante a elaboração do projeto
CREATE TABLE IF NOT EXISTS fontes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(180) NOT NULL,
    url VARCHAR(500) NOT NULL,
    finalidade VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

INSERT INTO turmas (nome) VALUES
('1º Ano A'), ('1º Ano B'), ('2º Ano A')
ON DUPLICATE KEY UPDATE nome = VALUES(nome);

INSERT INTO alunos (nome, email, turma_id)
SELECT 'Ana Souza', 'ana.souza@example.com', t.id
FROM turmas t
WHERE t.nome = '1º Ano A'
AND NOT EXISTS (SELECT 1 FROM alunos WHERE email = 'ana.souza@example.com');

INSERT INTO alunos (nome, email, turma_id)
SELECT 'Bruno Lima', 'bruno.lima@example.com', t.id
FROM turmas t
WHERE t.nome = '1º Ano B'
AND NOT EXISTS (SELECT 1 FROM alunos WHERE email = 'bruno.lima@example.com');

INSERT INTO fontes (titulo, url, finalidade)
SELECT 'PHP: PDO — PHP Data Objects',
       'https://www.php.net/manual/pt_BR/book.pdo.php',
       'Documentação da conexão PHP com bancos de dados usando PDO.'
WHERE NOT EXISTS (SELECT 1 FROM fontes WHERE url = 'https://www.php.net/manual/pt_BR/book.pdo.php');

INSERT INTO fontes (titulo, url, finalidade)
SELECT 'PHP: PDO::prepare',
       'https://www.php.net/manual/pt_BR/pdo.prepare.php',
       'Documentação sobre consultas preparadas e parâmetros.'
WHERE NOT EXISTS (SELECT 1 FROM fontes WHERE url = 'https://www.php.net/manual/pt_BR/pdo.prepare.php');

INSERT INTO fontes (titulo, url, finalidade)
SELECT 'MySQL: Foreign Keys',
       'https://dev.mysql.com/doc/refman/8.0/en/create-table-foreign-keys.html',
       'Referência para relacionamentos e chaves estrangeiras.'
WHERE NOT EXISTS (SELECT 1 FROM fontes WHERE url = 'https://dev.mysql.com/doc/refman/8.0/en/create-table-foreign-keys.html');

INSERT INTO fontes (titulo, url, finalidade)
SELECT 'MySQL: SELECT Statement',
       'https://dev.mysql.com/doc/refman/8.0/en/select.html',
       'Referência para consultas SELECT e JOIN.'
WHERE NOT EXISTS (SELECT 1 FROM fontes WHERE url = 'https://dev.mysql.com/doc/refman/8.0/en/select.html');
