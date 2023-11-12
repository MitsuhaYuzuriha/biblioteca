create database biblioteca;
use biblioteca;

CREATE TABLE Autores (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50)
);

CREATE TABLE Editoras (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50)
);

CREATE TABLE Genero (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50)
);

CREATE TABLE Valor (
    ID INT PRIMARY KEY,
    Preco DECIMAL(8, 2)
);

CREATE TABLE Livros (
    ID INT PRIMARY KEY,
    Titulo VARCHAR(50),
    Autor_ID INT,
    Editora_ID INT,
    Genero_ID INT,
    Valor_ID INT,
    DataLancamento DATE, 
    FOREIGN KEY (Autor_ID) REFERENCES Autores(ID),
    FOREIGN KEY (Editora_ID) REFERENCES Editoras(ID),
    FOREIGN KEY (Genero_ID) REFERENCES Genero(ID),
    FOREIGN KEY (Valor_ID) REFERENCES Valor(ID)
);

INSERT INTO Autores (ID, Nome) VALUES
    (1, 'Gillian Flynn'),
    (2, 'Paulo Coelho'),
    (3, 'Autor da FUVEST 2021');

INSERT INTO Editoras (ID, Nome) VALUES
    (1, 'Editora X'),
    (2, 'Editora Y'),
    (3, 'Editora Z');

INSERT INTO Genero (ID, Nome) VALUES
    (1, 'Suspense'),
    (2, 'Romance'),
    (3, 'Ficção');

INSERT INTO Valor (ID, Preco) VALUES
    (1, 20.00),
    (2, 25.00),
    (3, 30.00);

INSERT INTO Livros (ID, Titulo, Autor_ID, Editora_ID, Genero_ID, Valor_ID, DataLancamento) VALUES
    (1, 'Garota Exemplar', 1, 1, 1, 1, '2012-05-24'),
    (2, 'Objetos Cortantes', 1, 2, 2, 2, '2006-09-26'),
    (3, 'Lugares Escuros', 1, 3, 1, 3, '2009-05-04'),
    (4, 'O Alquimista', 2, 1, 2, 2, '1988-03-01'),
    (5, 'Brida', 2, 2, 3, 3, '1990-06-01'),
    (6, 'O Demônio e a Srta. Prym', 2, 3, 1, 1, '2000-11-01'),
    (7, 'Dom Casmurro', 3, 1, 2, 3, '1899-06-15'),
    (8, 'Memórias Póstumas de Brás Cubas', 3, 2, 3, 2, '1881-12-15'),
    (9, 'Iracema', 3, 3, 1, 1, '1865-12-20');
