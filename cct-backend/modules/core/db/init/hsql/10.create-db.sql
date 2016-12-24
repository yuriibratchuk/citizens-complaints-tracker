-- begin CCT_TICKET
create table CCT_TICKET (
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
    STATE integer,
    ASSIGNEE_ID varchar(36),
    PLANNED_DATE date,
    CLOSED_DATE date,
    ADDRESS varchar(512),
    CATEGORY_ID integer not null,
    LATITUDE double precision,
    LONGITUDE double precision,
    DECLINE_REASON varchar(255),
    IMAGE_FILE_ID varchar(36),
    EMERGENCY boolean,
    PRIORITISED boolean,
    MODERATOR_REMARK longvarchar,
    EXECUTOR_REMARK longvarchar,
    --
    primary key (ID)
)^-- end CCT_TICKET

-- begin SEC_USER
alter table SEC_USER add column ADDRESS varchar(255) ^
alter table SEC_USER add column DTYPE varchar(100) ^
update SEC_USER set DTYPE = 'cct$UserExt' where DTYPE is null ^
-- end SEC_USER
-- begin CCT_ACTIVITY
create table CCT_ACTIVITY (
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
-- end CCT_ACTIVITY
-- begin CCT_TICKET_CATEGORY
create table CCT_TICKET_CATEGORY (
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
-- end CCT_TICKET_CATEGORY
