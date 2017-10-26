/*******************************************************************************
 * Selected metadata objects
 * -------------------------
 * Extracted at 23/10/2017 20:09:33
 ******************************************************************************/

/*******************************************************************************
 * Roles
 * -----
 * Extracted at 23/10/2017 20:09:33
 ******************************************************************************/

/* "PUBLIC" is a system role, no CREATE ROLE statement. */
/* "RDB$ADMIN" is a system role, no CREATE ROLE statement. */
/*******************************************************************************
 * UDFs
 * ----
 * Extracted at 23/10/2017 20:09:33
 ******************************************************************************/

/*******************************************************************************
 * Tables
 * ------
 * Extracted at 23/10/2017 20:09:33
 ******************************************************************************/

CREATE TABLE BOMBA 
(
  ID                     INTEGER         NOT NULL,
  ID_TANQUE              INTEGER         NOT NULL,
  BOMBA                  VARCHAR(    50)  COLLATE WIN1258,
 CONSTRAINT PK_BOMBA PRIMARY KEY (ID)
);
CREATE TABLE PRODUTO 
(
  ID                    INTEGER         NOT NULL,
  ID_BOMBA              INTEGER         NOT NULL,
  PRODUTO               VARCHAR(    50) NOT NULL COLLATE WIN1258,
  VALOR                 DECIMAL( 14, 2),
  IMPOSTO               DECIMAL(  8, 2),
 CONSTRAINT PK_PRODUTO PRIMARY KEY (ID)
);
CREATE TABLE TANQUE 
(
  ID                  INTEGER         NOT NULL,
  TANQUE              VARCHAR(    50)  COLLATE WIN1258,
 CONSTRAINT PK_TANQUE PRIMARY KEY (ID)
);
CREATE TABLE VENDAS 
(
  ID                      INTEGER         NOT NULL,
  ID_PRODUTO              INTEGER         NOT NULL,
  VALOR                   DECIMAL( 14, 2),
  IMPOSTO                 DECIMAL( 14, 2),
  DATAMOV               TIMESTAMP,
 CONSTRAINT PK_VENDAS PRIMARY KEY (ID)
);
/*******************************************************************************
 * Foreign Key Constraints
 * -----------------------
 * Extracted at 23/10/2017 20:09:33
 ******************************************************************************/

ALTER TABLE BOMBA ADD CONSTRAINT BOMBA_FK_TANQUE 
  FOREIGN KEY (ID_TANQUE) REFERENCES TANQUE
  (ID) 
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
;

ALTER TABLE PRODUTO ADD CONSTRAINT PRODUTO_FK_BOMBA 
  FOREIGN KEY (ID_BOMBA) REFERENCES BOMBA
  (ID) 
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
;

ALTER TABLE VENDAS ADD CONSTRAINT VENDA_FK_PRODUTO 
  FOREIGN KEY (ID_PRODUTO) REFERENCES PRODUTO
  (ID) 
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
;

