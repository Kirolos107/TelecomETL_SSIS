use TelecomCompany
go

/*
IF EXISTS (
	SELECT *
	FROM   sys.foreign_keys
	WHERE  NAME = 'fk_fact_transaction_dim_audit'
                  AND parent_object_id = Object_id('fact_transaction')
	)
ALTER TABLE fact_transaction
    DROP CONSTRAINT fk_fact_transaction_dim_audit;
*/

if exists (select * from sys.tables where name = 'Fact_Transaction' and type = 'U')
drop table Fact_Transaction
go

create table Fact_Transaction (
	ID int not null identity (1,1),
	Transaction_ID int not null, -- transaction id from the source systme / file
	IMSI varchar(9) not null,
	Subscriber_ID int,
	TAC varchar(8) not null,
	SNR varchar(6) not null,
	IMEI varchar(14) null,
	Cell int not null,
	LAC int not null,
	Event_Type varchar(2) null,
	Event_Ts datetime not null,
	Audit_ID int not null default (-1)

	constraint PK_Fact_Transaction_ID primary key (ID)
);
go

/*
ALTER TABLE fact_transaction
	ADD CONSTRAINT pk_fact_transaction_id primary key (id) 
GO
*/

/*
alter table fact_transaction
	ADD CONSTRAINT fk_fact_transaction_dim_audit foreign  key (audit_id) references dim_audit(id)
GO
*/

alter table Fact_Transaction alter column TAC varchar(8) null
alter table Fact_Transaction alter column SNR varchar(6) null
