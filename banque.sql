BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `TRANSACTION` (
	`Id_transaction`	INTEGER NOT NULL DEFAULT 1000 PRIMARY KEY AUTOINCREMENT UNIQUE,
	`Type_transaction`	TEXT,
	`Date_transaction`	INTEGER,
	`Montant`	REAL,
	`Source`	TEXT,
	`Destination`	TEXT
);
CREATE TABLE IF NOT EXISTS `Employe` (
	`Id_employe`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`Nom_employe`	TEXT,
	`Login`	TEXT,
	`Password`	TEXT,
	`Poste`	TEXT,
	`Telephone`	INTEGER
);
INSERT INTO `Employe` (Id_employe,Nom_employe,Login,Password,Poste,Telephone) VALUES (1,'Administrateur','admin','admin','Administrateur',840867004105),
 (2,'Silas VIGAN','s.vigan','Silas123','Clientele',840867004105),
 (3,'ok','ok','ok','Clientele',123),
 (4,' test',' test','  ',' ',123),
 (5,'test','test','[C@3a6a03c5','Caisse',1234),
 (6,'toto','toto','[C@54418489','Caisse',123),
 (7,'toto','tata','toto','Clientele',1234),
 (8,' jojo',' jaja','lola',' ',12345),
 (9,'lol','lil','ville','Clientele',123);
CREATE TABLE IF NOT EXISTS `COMPTE` (
	`Num_compte`	INTEGER NOT NULL DEFAULT 1000000000 PRIMARY KEY AUTOINCREMENT UNIQUE,
	`Code_client`	INTEGER,
	`Intitule_compte`	TEXT,
	`Solde_compte`	REAL,
	`Taux_interet`	REAL,
	`Type_compte`	TEXT,
	`Decouvert`	INTEGER,
	FOREIGN KEY(`Code_client`) REFERENCES `CLIENT`(`Id_client`)
);
CREATE TABLE IF NOT EXISTS `CLIENT` (
	`Id_client`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`Nom_client`	TEXT,
	`Num_client`	INTEGER,
	`Adresse`	TEXT,
	`Sexe`	TEXT
);
COMMIT;
