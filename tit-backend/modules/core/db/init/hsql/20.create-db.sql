-- begin TIT_TICKET
alter table TIT_TICKET add constraint FK_TIT_TICKET_ASSIGNEE foreign key (ASSIGNEE_ID) references SEC_USER(ID)^
alter table TIT_TICKET add constraint FK_TIT_TICKET_CATEGORY foreign key (CATEGORY_ID) references TIT_TICKET_CATEGORY(ID)^
alter table TIT_TICKET add constraint FK_TIT_TICKET_IMAGE_FILE foreign key (IMAGE_FILE_ID) references SYS_FILE(ID)^
create index IDX_TIT_TICKET_CATEGORY on TIT_TICKET (CATEGORY_ID)^
create index IDX_TIT_TICKET_ASSIGNEE on TIT_TICKET (ASSIGNEE_ID)^
create index IDX_TIT_TICKET_IMAGE_FILE on TIT_TICKET (IMAGE_FILE_ID)^
-- end TIT_TICKET

-- begin TIT_ACTIVITY
alter table TIT_ACTIVITY add constraint FK_TIT_ACTIVITY_TICKET_ID foreign key (TICKET_ID) references TIT_TICKET(ID)^
create index IDX_TIT_ACTIVITY_TICKET on TIT_ACTIVITY (TICKET_ID)^
-- end TIT_ACTIVITY
