USE master
go

/* 1- Craeate Database */
if exists (select * from sys.databases where name = 'TelecomCompany')
drop database TelecomCompany
go

create database TelecomCompany
go

