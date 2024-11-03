-- TODAS AS TABELAS E DADOS QUE FORAM INSERIDOS NO BANCO DE DADOS


CREATE TABLE Drivers ( DriverID INT PRIMARY KEY, Nome VARCHAR(100), CNH VARCHAR(20), Endereço VARCHAR(200), Contato VARCHAR(50));

INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato) VALUES (123, 'Filipe', '123456789-0', 'Rua X', '(21) 12345-6789');
INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato) VALUES (456, 'João', '456123789-1', 'Rua Y', '(21) 98765-4321');
INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato) VALUES (789, 'Maria', '123789456-2', 'Rua Z', '(21) 67345-8912');
INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato) VALUES (987, 'Hugo', '394567128-3', 'Rua W', '(21) 12745-6389');
INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato) VALUES (654, 'Paula', '126734589-4', 'Rua K', '(11) 12345-6789');
INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato) VALUES (321, 'José', '678912345-5', 'Rua Q', '(11) 12000-6345');


 
CREATE TABLE Clients (ClientID INT PRIMARY KEY, Nome VARCHAR(100), Empresa VARCHAR(100), Endereço VARCHAR(200), Contato VARCHAR(50));

INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato) VALUES (1234, 'Paulo Augusto', 'Horizonte LTDA', 'Rua XY', '(21) 10000-0001');
INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato) VALUES (5678, 'Manuel Ferreira', 'EcoSistemas LTDA', 'Rua WYZ', '(21) 10500-0001');
INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato) VALUES (9876, 'Fernanda Santos', 'Vértice Soluções', 'Rua QWE', '(21) 10006-0001');
INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato) VALUES (5432, 'Júlia Smith', 'Petal Pharmaceuticals', 'PQQ Street', '+1 111-111-1111');
INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato) VALUES (1111, 'Daniel Winston', 'Quantum Quill', 'XCX Street', '+1 222-222-2222');




CREATE TABLE Orders ( OrderID INT PRIMARY KEY, ClientID INT, DriverID INT, DetalhesPedido TEXT, DataEntrega DATE, Status VARCHAR(50), FOREIGN KEY (ClientID) REFERENCES Clients(ClientID), FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID));

INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status) VALUES (1, 1234, 987, 'Entrega de Metal', '2024-05-09', 'Em trânsito');
INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status) VALUES (2, 5678, 456, 'Entrega de Sementes', '2024-06-12', 'Em trânsito');
INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status) VALUES (3, 9876, 123, 'Entrega de Madeira', '2024-05-12', 'Em trânsito');
INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status) VALUES (4, 5432, 789, 'Entrega de Remédios', '2024-05-31', 'Em trânsito');
INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status) VALUES (5, 1111, 321, 'Entrega de Processadores', '2024-05-15', 'Em trânsito');
