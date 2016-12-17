-- begin TIT_TICKET
create table TIT_TICKET (
    ID bigint not null,
    UUID varchar(36),
    VERSION integer not null,
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    --
    SUBJECT varchar(255) not null,
    BODY_ longvarchar not null,
    STATE integer not null,
    ASSIGNEE_ID varchar(36),
    PLANNED_DATE date,
    CLOSED_DATE date,
    ADDRESS varchar(512),
    CATEGORY_ID integer not null,
    LATITUDE double precision,
    LONGITUDE double precision,
    DECLINE_REASON varchar(255),
    USERGRADE integer,
    FEEDBACK varchar(600),
    IMAGE_FILE_ID varchar(36),
    EMERGENCY boolean,
    PRIORITISED boolean,
    --
    primary key (ID)
)^-- end TIT_TICKET

-- begin SEC_USER
alter table SEC_USER add column ADDRESS varchar(255) ^
alter table SEC_USER add column DTYPE varchar(100) ^
update SEC_USER set DTYPE = 'tit$UserExt' where DTYPE is null ^
-- end SEC_USER
-- begin TIT_ACTIVITY
create table TIT_ACTIVITY (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer not null,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TICKET_ID bigint not null,
    SUBJECT varchar(255),
    COMMENT_ longvarchar not null,
    --
    primary key (ID)
)^
-- end TIT_ACTIVITY
-- begin TIT_TICKET_CATEGORY
create table TIT_TICKET_CATEGORY (
    ID integer not null,
    UUID varchar(36),
    VERSION integer not null,
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    --
    NAME varchar(255) not null,
    ENABLED boolean not null,
    --
    primary key (ID)
)^
-- end TIT_TICKET_CATEGORY
