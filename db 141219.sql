
CREATE TABLE contract
(
	contract_number  VARCHAR(50) NOT NULL,
	contract_text  VARCHAR(200) NOT NULL,
	start_date  DATE NOT NULL,
	end_date  DATE NOT NULL,
	state  CHAR(18) NOT NULL,
	name  VARCHAR(50) NOT NULL,
	place  VARCHAR(100) NOT NULL,
	val  DOUBLE NOT NULL,
	template_id  INTEGER NOT NULL,
	counterparty_id  INTEGER NOT NULL,
	user_id  INTEGER NOT NULL
)
;



ALTER TABLE contract
	ADD  PRIMARY KEY (template_id,counterparty_id,user_id,contract_number)
;



CREATE TABLE contract_attachment
(
	contract_attachment_id  INTEGER NOT NULL,
	attachment_name  VARCHAR(50) NULL,
	description  VARCHAR(100) NULL,
	file  BLOB NULL,
	template_id  INTEGER NULL,
	counterparty_id  INTEGER NULL,
	user_id  INTEGER NULL,
	contract_number  VARCHAR(50) NULL
)
;



ALTER TABLE contract_attachment
	ADD  PRIMARY KEY (contract_attachment_id)
;



CREATE TABLE contract_transaction
(
	transaction_id  INTEGER NOT NULL,
	val  DOUBLE NULL,
	type  VARCHAR(20) NULL,
	datetime  DATETIME NULL,
	template_id  INTEGER NULL,
	counterparty_id  INTEGER NULL,
	user_id  INTEGER NULL,
	contract_number  VARCHAR(50) NULL
)
;



ALTER TABLE contract_transaction
	ADD  PRIMARY KEY (transaction_id)
;



CREATE TABLE counterparty
(
	counterparty_id  INTEGER NOT NULL,
	ITN  NUMERIC(11) NOT NULL,
	surname  VARCHAR(50) NOT NULL,
	name  VARCHAR(50) NOT NULL,
	patronymic  CHAR(50) NULL,
	phone  CHAR(10) NOT NULL,
	email  CHAR(50) NULL,
	type  CHAR(18) NULL,
	description  CHAR(100) NULL
)
;



ALTER TABLE counterparty
	ADD  PRIMARY KEY (counterparty_id)
;



CREATE TABLE supplementary_agreement
(
	agreement_id  INTEGER NOT NULL,
	creation_date  DATETIME NULL,
	text  VARCHAR(200) NULL,
	description  VARCHAR(100) NULL,
	template_id  INTEGER NULL,
	counterparty_id  INTEGER NULL,
	user_id  INTEGER NULL,
	contract_number  VARCHAR(50) NULL
)
;



ALTER TABLE supplementary_agreement
	ADD  PRIMARY KEY (agreement_id)
;



CREATE TABLE template
(
	template_id  INTEGER NOT NULL,
	name  VARCHAR(50) NOT NULL,
	template  BLOB NOT NULL
)
;



ALTER TABLE template
	ADD  PRIMARY KEY (template_id)
;



CREATE TABLE user
(
	surname  VARCHAR(50) NOT NULL,
	name  VARCHAR(50) NOT NULL,
	user_id  INTEGER NOT NULL,
	login_hash  VARCHAR(64) NOT NULL,
	password_hash  VARCHAR(64) NOT NULL,
	patronymic  VARCHAR(50) NULL,
	user_state  boolean NOT NULL,
	description  VARCHAR(100) NULL
)
;



ALTER TABLE user
	ADD  PRIMARY KEY (user_id)
;



ALTER TABLE contract
	ADD FOREIGN KEY используется_в (template_id) REFERENCES template(template_id)
;


ALTER TABLE contract
	ADD FOREIGN KEY участует_в (counterparty_id) REFERENCES counterparty(counterparty_id)
;


ALTER TABLE contract
	ADD FOREIGN KEY создаёт (user_id) REFERENCES user(user_id)
;



ALTER TABLE contract_attachment
	ADD FOREIGN KEY имеет (template_id,counterparty_id,user_id,contract_number) REFERENCES contract(template_id,counterparty_id,user_id,contract_number)
		ON DELETE CASCADE
;



ALTER TABLE contract_transaction
	ADD FOREIGN KEY имеет (template_id,counterparty_id,user_id,contract_number) REFERENCES contract(template_id,counterparty_id,user_id,contract_number)
		ON DELETE CASCADE
;



ALTER TABLE supplementary_agreement
	ADD FOREIGN KEY имеет (template_id,counterparty_id,user_id,contract_number) REFERENCES contract(template_id,counterparty_id,user_id,contract_number)
		ON DELETE CASCADE
;


