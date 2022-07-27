--liquibase formatted sql

--changeset saradhi.makkena:8 labels:example-label context:example-context
--comment: example comment
create table demo1.student (
    name varchar(50),
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE person;

--changeset saradhi.makkena:9 labels:example-label context:example-context
--comment: example comment
create table demo1.employee123 (
    name varchar(50),
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE company;

--changeset other.dev:10 labels:example-label context:example-context
--comment: example comment

alter table demo1.employee123 add column country varchar(2)
--rollback ALTER TABLE person DROP COLUMN country;

--changeset saradhi.makkena:11
create table demo1.TREE (
    name varchar(50),
    leafs varchar(50),
    height number(22)
)
--rollback DROP TABLE Tree;

