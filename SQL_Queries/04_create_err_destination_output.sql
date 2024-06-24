use TelecomCompany
go


CREATE TABLE Err_Destination_Output (
    [ID] int,
    [IMSI] varchar(9),
    [IMEI] varchar(14),
    [Subscriber_ID] int,
    [Cell] int,
    [LAC] int,
    [Event_Type] varchar(2),
    [event_Ts] datetime,
    [TAC] varchar(8),
    [SNR] varchar(8),
    [ErrorCode] int,
    [ErrorColumn] int
)
go

alter table err_destination_output add audit_id int;