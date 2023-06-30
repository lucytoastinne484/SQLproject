--TABELA DE DADOS CLIENTE--

CREATE TABLE  CLIENTE( 
    CNH VARCHAR(100) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Cartão INT NOT NULL,
    Telefone VARCHAR(100) NOT NULL,
    PRIMARY KEY (CNH) );

---Como adicionar dados na tabela----


INSERT INTO CLIENTE(CNH, Nome, Cartão ,Telefone)
VALUES ('2095803945', 'Jose Ramos da Silva', '238974298375984' , '1199999-9999');
INSERT INTO CLIENTE(CNH, Nome, Cartão ,Telefone)
VALUES ('7037453875984675685', 'Silva Martins de Souza', '356332746805623785748', '1123434905830498530');
INSERT INTO CLIENTE(CNH, Nome, Cartão ,Telefone)
VALUES('8724632756278402930932', 'Lucya Amano Sakurane', '09798498573', '1123445678');
INSERT INTO CLIENTE(CNH, Nome, Cartão ,Telefone)
VALUES('235687235872659285698475257', 'Mirai de Souza', '9823648734583756784628', '11244556789');
INSERT INTO CLIENTE(CNH, Nome, Cartão ,Telefone)
VALUES('1716382337562856349', 'helio', '39875987583793876' , '11283893754095');
INSERT INTO CLIENTE(CNH, Nome, Cartão ,Telefone)
VALUES('875834657639856498', 'Julinho' , '24579997269148174835', '1135498887398759847593847398');
INSERT INTO CLIENTE(CNH, Nome, Cartão ,Telefone)
VALUES('198273875683756293', 'Carlos' , '162761548273587563847', '1134876587923786512835687346837468374658793654');



--Tabela a da agencia-----

CREATE TABLE Agencia (
AgNum INT NOT NULL,
Numag INT NOT NULL,
Rua VARCHAR(100) NOT NULL,  
Cidade VARCHAR(100) NOT NULL,
Estado VARCHAR(100) NOT NULL,
Contato VARCHAR(100) NOT NULL,

);

INSERT INTO Agencia (AgNum, Numag, Rua, Cidade, Estado, Contato)
VALUES('923429387428374', '9824729384732984723', 'Rua do João', 'Guarulhos', 'SP', '1198473249872983243543' );
INSERT INTO Agencia (AgNum, Numag, Rua, Cidade , Estado, Contato)
VALUES('3782378468745687465', '87326504725587564378', 'Werguis', 'São Paulo', 'SP', '1144474457848756747854');

---Tabela de carros-----

CREATE TABLE Carros (
Placa VARCHAR(100) NOT NULL,
Modelo VARCHAR(100) NOT NULL, 
Ano INT NOT NULL,
Numag INT NOT NULL,
PRIMARY KEY(Placa),
FOREIGN KEY(Numag) REFERENCES Agencia(Numag)
);


----Adicionando dados na tabela carro-----


INSERT INTO Carros(Placa, Modelo, Ano , Numag)
VALUES('ABC-1234', 'Volksvagui', '2000', '87326504725587564378')
INSERT INTO Carros (Placa, Modelo, Ano, Numag)
VALUES('CDE-4567', 'CHEVROLETCHE', '2014', '9824729384732984723');

-----Criando a tabela aluguel-------
CREATE TABLE Aluguel (
Data DATE NOT NULL,
CNH VARCHAR(100) NOT NULL,
Placa VARCHAR(100) NOT NULL,
PRIMARY KEY(CNH, Placa),
FOREIGN KEY (CNH) REFERENCES CLIENTE(CNH),
FOREIGN KEY (Placa) REFERENCES Carros(Placa),
);

INSERT INTO Aluguel ( Data,CNH, Placa)
VALUES('11/03/2020', '8724632756278402930932', 'ABC-1234');
INSERT INTO Aluguel ( Data,CNH, Placa)
VALUES('23/07/2021', '875834657639856498', 'CDE-4567');

----Filtro de Dados----

SELECT * FROM CLIENTE
SELECT * FROM Agencia
SELECT * FROM Carros
SELECT * FROM Aluguel