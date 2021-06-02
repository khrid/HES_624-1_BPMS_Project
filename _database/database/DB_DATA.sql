/*
    $Id: sample.sql,v 1.5 2005/05/02 15:07:27 unsaved Exp $
    Examplifies use of SqlTool.
    PCTASK Table creation
*/

/* Ignore error for these two statements */
\c true
DROP TABLE BIERE;
\c false

\p Creating table BIERE
CREATE TABLE BIERE (
    ID integer identity PRIMARY KEY ,
    NOM varchar(40) not null,
	UNIQUE (ID)
);

/*\p Creating table COMPTE
CREATE TABLE COMPTE (
    ID integer identity PRIMARY KEY ,
    NUMERO int not null,
    SOLDE integer,
	FK_CLIENT integer,
	DESCRIPTION varchar,
    FOREIGN KEY (FK_CLIENT) REFERENCES CLIENT,
    UNIQUE (ID)
);*/

\p Inserting test records
INSERT INTO BIERE (ID, NOM) VALUES (
    '1', 'Blonde' );
	
INSERT INTO BIERE (ID, NOM) VALUES (
    '2', 'Brune' );
	
INSERT INTO BIERE (ID, NOM) VALUES (
    '3', 'Rousse' );
	
INSERT INTO BIERE (ID, NOM) VALUES (
    '4', 'IPA' );
	
commit;
