USE [EnergyLeverage]
GO
CREATE SCHEMA [STG]

DROP TABLE [STG].[Zonnepanelen_Daily];

CREATE TABLE [STG].[Zonnepanelen_Daily]
(
   Datum        DATE PRIMARY KEY,
   Waarde       DECIMAL (8, 2) NOT NULL,
   Tijd         VARCHAR (8) NOT NULL,
   Weerbeeld    VARCHAR (250) DEFAULT NULL,
   Zon_minuut   INT DEFAULT NULL,
   Neerslag_mm  DECIMAL (8, 2) DEFAULT NULL,
);

select * from stg.[Zonnepanelen_Daily]


CREATE TABLE STG.t
( datum date )

insert into stg.t (datum) values ('12-12-2020'); --Dit werkt
insert into stg.t (datum) values ('12-JAN-2020'); --Dit werkt
insert into stg.t (datum) values ('2020-JAN-20'); --Dit werkt
insert into stg.t (datum) values ('20200220'); --Dit werkt

select * from stg.t

SELECT FORMAT(123456789, '##-##-#####'); --Format 12-34-56789
SELECT ISDATE('20200101');               -- 1: True