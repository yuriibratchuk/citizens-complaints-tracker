-- begin CCT_TICKET
alter table CCT_TICKET add constraint FK_CCT_TICKET_ASSIGNEE foreign key (ASSIGNEE_ID) references SEC_USER(ID)^
alter table CCT_TICKET add constraint FK_CCT_TICKET_CATEGORY foreign key (CATEGORY_ID) references CCT_TICKET_CATEGORY(ID)^
alter table CCT_TICKET add constraint FK_CCT_TICKET_IMAGE_FILE foreign key (IMAGE_FILE_ID) references SYS_FILE(ID)^
create index IDX_CCT_TICKET_CATEGORY on CCT_TICKET (CATEGORY_ID)^
create index IDX_CCT_TICKET_ASSIGNEE on CCT_TICKET (ASSIGNEE_ID)^
create index IDX_CCT_TICKET_IMAGE_FILE on CCT_TICKET (IMAGE_FILE_ID)^
-- end CCT_TICKET

-- begin CCT_ACTIVITY
alter table CCT_ACTIVITY add constraint FK_CCT_ACTIVITY_TICKET_ID foreign key (TICKET_ID) references CCT_TICKET(ID)^
create index IDX_CCT_ACTIVITY_TICKET on CCT_ACTIVITY (TICKET_ID)^
-- end CCT_ACTIVITY
