DROP DATABASE IF EXISTS BibliotecaPessoal;
CREATE DATABASE IF NOT EXISTS BibliotecaPessoal;

USE BibliotecaPessoal;

-- Tabela Autor
CREATE TABLE Autor (
 Autor_ID INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR(255) NOT NULL,
 Sobrenome VARCHAR(255) NOT NULL,
 Data_Nascimento DATE,
 Nacionalidade VARCHAR(100)
);

-- Tabela Categoria
CREATE TABLE Categoria (
 Categoria_ID INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR(100) NOT NULL
);

-- Tabela Editora
CREATE TABLE Editora (
 Editora_ID INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR(255) NOT NULL,
 Endereco VARCHAR(255),
 Contato VARCHAR(100)
);

-- Tabela Livro (sem o campo Autor_ID)
CREATE TABLE Livro (
 Livro_ID INT AUTO_INCREMENT PRIMARY KEY,
 Titulo VARCHAR(255) NOT NULL,
 Editora_ID INT,
 Ano_Publicacao INT,
 Numero_Paginas INT,
 Categoria_ID INT,
 CONSTRAINT `FK_LIVRO_REF_EDITORA` FOREIGN KEY (Editora_ID) REFERENCES Editora(Editora_ID),
 CONSTRAINT `FK_LIVRO_REF_CATEGORIA`FOREIGN KEY (Categoria_ID) REFERENCES Categoria(Categoria_ID)
);

-- Tabela Autor_Livro
CREATE TABLE Autor_Livro (
 Autor_Livro_ID INT AUTO_INCREMENT PRIMARY KEY,
 Autor_ID INT,
 Livro_ID INT,
 FOREIGN KEY (Autor_ID) REFERENCES Autor(Autor_ID),
 FOREIGN KEY (Livro_ID) REFERENCES Livro(Livro_ID)
);

USE BibliotecaPessoal;

DROP DATABASE IF EXISTS BibliotecaPessoal;
CREATE DATABASE IF NOT EXISTS BibliotecaPessoal;

USE BibliotecaPessoal;

-- Tabela Autor
CREATE TABLE Autor (
 Autor_ID INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR(255) NOT NULL,
 Sobrenome VARCHAR(255) NOT NULL,
 Data_Nascimento DATE,
 Nacionalidade VARCHAR(100)
);

-- Tabela Categoria
CREATE TABLE Categoria (
 Categoria_ID INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR(100) NOT NULL
);

-- Tabela Editora
CREATE TABLE Editora (
 Editora_ID INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR(255) NOT NULL,
 Endereco VARCHAR(255),
 Contato VARCHAR(100)
);

-- Tabela Livro (sem o campo Autor_ID)
CREATE TABLE Livro (
 Livro_ID INT AUTO_INCREMENT PRIMARY KEY,
 Titulo VARCHAR(255) NOT NULL,
 Editora_ID INT,
 Ano_Publicacao INT,
 Numero_Paginas INT,
 Categoria_ID INT,
 CONSTRAINT `FK_LIVRO_REF_EDITORA` FOREIGN KEY (Editora_ID) REFERENCES Editora(Editora_ID),
 CONSTRAINT `FK_LIVRO_REF_CATEGORIA`FOREIGN KEY (Categoria_ID) REFERENCES Categoria(Categoria_ID)
);

-- Tabela Autor_Livro
CREATE TABLE Autor_Livro (
 Autor_Livro_ID INT AUTO_INCREMENT PRIMARY KEY,
 Autor_ID INT,
 Livro_ID INT,
 FOREIGN KEY (Autor_ID) REFERENCES Autor(Autor_ID),
 FOREIGN KEY (Livro_ID) REFERENCES Livro(Livro_ID)
);

USE BibliotecaPessoal;


-- Populando a tabela Autor
INSERT INTO Autor (Nome, Sobrenome, Data_Nascimento, Nacionalidade)
VALUES ('Joaquim', 'Silva', '1970-05-01', 'Brasileiro'),
    ('Maria', 'Pereira', '1980-06-12', 'Portuguesa'),
    ('Paulo', 'Ribeiro', '1960-04-23', 'Brasileiro'),
    ('Ana', 'Fernandes', '1990-02-18', 'Brasileira'),
    ('Miguel', 'Costa', '1975-12-09', 'Português'),
    ('Luciana', 'Dias', '1988-11-05', 'Brasileira'),
    ('Roberto', 'Santos', '1950-08-14', 'Brasileiro'),
    ('Carolina', 'Oliveira', '1995-07-24', 'Brasileira'),
    ('José', 'Mendes', '1965-03-30', 'Português'),
    ('Teresa', 'Castro', '1985-09-15', 'Portuguesa');

-- Populando a tabela Editora
INSERT INTO Editora (Nome, Endereco, Contato)
VALUES ('Editora Alpha', 'Rua ABC, 123', '+123456789'),
    ('Editora Beta', 'Avenida XYZ, 456', '+987654321');

-- Populando a tabela Categoria
INSERT INTO Categoria (Nome)
VALUES ('Romance'),
    ('Ciência'),
    ('Ficção Científica'),
    ('História'),
    ('Autoajuda');

-- Populando a tabela Livro
INSERT INTO Livro (Titulo, Editora_ID, Ano_Publicacao, Numero_Paginas, Categoria_ID)
VALUES ('A Jornada', 1, 2000, 320, 1),
    ('Além do Cosmos', 2, 2010, 500, 3),
    ('História de Roma', 1, 1995, 400, 4),
    ('Conquistando Sonhos', 2, 2020, 250, 5),
    ('Estrelas Caídas', 1, 2015, 350, 3),
    ('A Mente Poderosa', 2, 2020, 280, 5),
    ('O Mar e o Amor', 1, 2005, 310, 1),
    ('Descobrindo Partículas', 2, 2018, 480, 2),
    ('Planetas Distantes', 2, 2019, 370, 3),
    ('O Império das Sombras', 1, 2017, 450, 1),
    ('Revolução das Ideias', 1, 2008, 320, 2),
    ('Labirinto do Tempo', 2, 2011, 300, 3),
    ('Amores Perdidos', 1, 2004, 290, 1),
    ('DNA: O Código da Vida', 2, 2013, 420, 2),
    ('Galáxias Desconhecidas', 1, 2016, 380, 3),
    ('O Legado', 2, 2002, 340, 1),
    ('Guerras Passadas', 1, 1998, 450, 4),
    ('Poder Interior', 2, 2021, 260, 5),
    ('Teoria Quântica', 1, 2007, 500, 2),
    ('As Aventuras no Espaço', 2, 2014, 360, 3);

-- Populando a tabela Autor_Livro
-- Atribuindo autores aos livros de forma aleatória para demonstração.
INSERT INTO Autor_Livro (Autor_ID, Livro_ID)
VALUES (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (1, 11),
    (2, 12),
    (3, 13),
    (4, 14),
    (5, 15),
    (6, 16),
    (7, 17),
    (8, 18),
    (9, 19),
    (10, 20);

--exercicio 1
DELIMITER //
CREATE PROCEDURE sp_ListarAutores()
BEGIN
    SELECT * FROM Autor;
END //
DELIMITER ;
CALL sp_ListarAutores();

--exercicio 2
DELIMITER //
CREATE PROCEDURE sp_LivrosPorCategoria(IN CategoriaNome VARCHAR(100))
BEGIN
    SELECT Livro.Titulo, Autor.Nome, Autor.Sobrenome
    FROM Livro
    JOIN Categoria ON Livro.Categoria_ID = Categoria.Categoria_ID
    JOIN Autor_Livro ON Livro.Livro_ID = Autor_Livro.Livro_ID
    JOIN Autor ON Autor_Livro.Autor_ID = Autor.Autor_ID
    WHERE Categoria.Nome = CategoriaNome;
END //
DELIMITER ;
CALL sp_LivrosPorCategoria('Romance');
CALL sp_LivrosPorCategoria('Ciência');

--exercicio 3
DELIMITER //
CREATE PROCEDURE sp_ContarLivrosPorCategoria(IN CategoriaNome VARCHAR(100), OUT TotalLivros INT)
BEGIN
    SELECT COUNT(*) INTO TotalLivros
    FROM Livro
    JOIN Categoria ON Livro.Categoria_ID = Categoria.Categoria_ID
    WHERE Categoria.Nome = CategoriaNome;
END //
DELIMITER ;
-- Chame a stored procedure para contar livros em uma categoria específica (por exemplo, "Romance")
CALL sp_ContarLivrosPorCategoria('Romance', @Total);

-- Recupere o valor de @Total (número total de livros)
SELECT @Total;


--exercicio 4
DELIMITER //
CREATE PROCEDURE sp_VerificarLivrosCategoria(IN CategoriaNome VARCHAR(100), OUT PossuiLivros BOOL)
BEGIN
    SELECT EXISTS (
        SELECT 1
        FROM Livro
        JOIN Categoria ON Livro.Categoria_ID = Categoria.Categoria_ID
        WHERE Categoria.Nome = CategoriaNome
    ) INTO PossuiLivros;
END //
DELIMITER ;


--exercicio 5
DELIMITER //
CREATE PROCEDURE sp_LivrosAteAno(IN AnoFornecido INT)
BEGIN
    SELECT Titulo, Ano_Publicacao
    FROM Livro
    WHERE Ano_Publicacao <= AnoFornecido;
END //
DELIMITER ;
CALL sp_LivrosAteAno(2010);

--exercicio 6
DELIMITER //
CREATE PROCEDURE sp_TitulosPorCategoria(IN CategoriaNome VARCHAR(100))
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE livroTitulo VARCHAR(255);
    DECLARE cur CURSOR FOR
        SELECT Livro.Titulo
        FROM Livro
        JOIN Categoria ON Livro.Categoria_ID = Categoria.Categoria_ID
        WHERE Categoria.Nome = CategoriaNome;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    
    OPEN cur;
    
    -- Inicialize a tabela de resultados vazia
    CREATE TEMPORARY TABLE IF NOT EXISTS Temp_Titulos (Titulo VARCHAR(255));
    
    FETCH cur INTO livroTitulo;
    
    WHILE NOT done DO
        INSERT INTO Temp_Titulos (Titulo) VALUES (livroTitulo);
        FETCH cur INTO livroTitulo;
    END WHILE;
    
    CLOSE cur;
    
    -- Selecionar os resultados da tabela temporária
    SELECT Titulo FROM Temp_Titulos;
    
    -- Limpar a tabela temporária
    DROP TEMPORARY TABLE IF EXISTS Temp_Titulos;
END //
DELIMITER ;

--exercicio 7
DELIMITER //
CREATE PROCEDURE sp_AdicionarLivro(
    IN Titulo VARCHAR(255),
    IN Editora_ID INT,
    IN Ano_Publicacao INT,
    IN Numero_Paginas INT,
    IN Categoria_ID INT
)
BEGIN
    DECLARE EXIT HANDLER FOR 1062
    BEGIN
        -- Código de erro 1062 é para chave duplicada (título já existe)
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: O título do livro já existe na tabela.';
    END;

    INSERT INTO Livro (Titulo, Editora_ID, Ano_Publicacao, Numero_Paginas, Categoria_ID)
    VALUES (Titulo, Editora_ID, Ano_Publicacao, Numero_Paginas, Categoria_ID);
END //
DELIMITER ;

--exercicio 8 
DELIMITER //
CREATE PROCEDURE sp_AutorMaisAntigo()
BEGIN
    SELECT Nome, Sobrenome
    FROM Autor
    WHERE Data_Nascimento = (
        SELECT MIN(Data_Nascimento)
        FROM Autor
    );
END //
DELIMITER ;

