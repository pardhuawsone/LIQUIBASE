--liquibase formatted sql

--changeset saradhi.makkena:4 labels:example-label context:example-context
--comment: example comment
create table demo.student (
    name varchar(50),
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE person;

--changeset saradhi.makkena:5 labels:example-label context:example-context
--comment: example comment
create table demo.employee123 (
    name varchar(50),
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE company;

--changeset other.dev:6 labels:example-label context:example-context
--comment: example comment

alter table demo.person add column country varchar(2)
--rollback ALTER TABLE person DROP COLUMN country;
