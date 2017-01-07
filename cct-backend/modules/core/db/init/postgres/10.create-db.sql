-- begin CCT_COMPLAINT
create table CCT_COMPLAINT (
    ID bigint,
    UUID uuid,
    VERSION integer not null,
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    --
    SUBJECT varchar(255) not null,
    BODY_ text not null,
    STATE integer,
    ASSIGNEE_ID uuid,
    PLANNED_DATE date,
    CLOSED_DATE date,
    ADDRESS varchar(512),
    CATEGORY_ID integer not null,
    LATITUDE double precision,
    LONGITUDE double precision,
    DECLINE_REASON varchar(255),
    IMAGE_FILE_ID uuid,
    EMERGENCY boolean,
    PRIORITISED boolean,
    MODERATOR_REMARK text,
    EXECUTOR_REMARK text,
    --
    primary key (ID)
)^
-- end CCT_COMPLAINT
-- begin CCT_ACTIVITY
create table CCT_ACTIVITY (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    COMPLAINT_ID bigint not null,
    SUBJECT varchar(255),
    COMMENT_ text not null,
    --
    primary key (ID)
)^
-- end CCT_ACTIVITY
-- begin CCT_COMPLAINT_CATEGORY
create table CCT_COMPLAINT_CATEGORY (
    ID integer,
    UUID uuid,
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
-- end CCT_COMPLAINT_CATEGORY
-- begin SEC_USER
alter table SEC_USER add column ADDRESS varchar(255) ^
alter table SEC_USER add column DTYPE varchar(100) ^
update SEC_USER set DTYPE = 'cct$UserExt' where DTYPE is null ^
-- end SEC_USER
