CREATE DATABASE IF NOT EXISTS REDEORGULHO;
USE REDEORGULHO;

CREATE TABLE Usuario (
    IDUsuario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Sobrenome VARCHAR(100),
    IdentidadeGenero VARCHAR(50),
    OrientacaoSexual VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Telefone VARCHAR(20),
    CPF VARCHAR(14) UNIQUE,
    Senha VARCHAR(255),
    DataCadastro DATETIME
);

CREATE TABLE PostForum (
    IDPost INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(200),
    Conteudo TEXT,
    DataPostagem DATETIME,
    Imagem VARCHAR(255),
    IDUsuario INT,
    FOREIGN KEY (IDUsuario) REFERENCES Usuario(IDUsuario)
);

CREATE TABLE RespostaForum (
    IDResposta INT PRIMARY KEY AUTO_INCREMENT,
    Conteudo TEXT,
    DataResposta DATETIME,
    IDPost INT,
    IDUsuario INT,
    FOREIGN KEY (IDPost) REFERENCES PostForum(IDPost),
    FOREIGN KEY (IDUsuario) REFERENCES Usuario(IDUsuario)
);

CREATE TABLE LocalApoio (
    IDLocal INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(200),
    Descricao TEXT,
    TipoLocal INT,
    Imagem VARCHAR(255),
    LinkMaps VARCHAR(255),
    StatusLocal ENUM('pendente', 'aprovado', 'rejeitado'),
    IDUsuario INT,
    FOREIGN KEY (TipoLocal) REFERENCES TipoLocal(IDTipoLocal),
    FOREIGN KEY (IDUsuario) REFERENCES Usuario(IDUsuario)
);

CREATE TABLE TagsGeral (
    IDTag INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100)
);

CREATE TABLE PostTag (
    IDPost INT,
    IDTag INT,
    PRIMARY KEY (IDPost, IDTag),
    FOREIGN KEY (IDPost) REFERENCES PostForum(IDPost),
    FOREIGN KEY (IDTag) REFERENCES TagsGeral(IDTag)
);

CREATE TABLE LocalTag (
    IDLocal INT,
    IDTag INT,
    PRIMARY KEY (IDLocal, IDTag),
    FOREIGN KEY (IDLocal) REFERENCES LocalApoio(IDLocal),
    FOREIGN KEY (IDTag) REFERENCES TagsGeral(IDTag)
);
