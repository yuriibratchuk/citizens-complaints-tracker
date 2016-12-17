-- Ticket categories

insert into TIT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (1, '2016-08-28 08:45:03', 'admin', 'be6ef31a-fc4d-2c98-be4f-78497c1bb087', 'Other', true, 1, null, null, '2016-08-28 08:45:03', null);

insert into TIT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (2, '2016-08-28 08:45:09', 'admin', '91d97348-4f5e-819f-00be-5781be6aadca', 'Roads', true, 1, null, null, '2016-08-28 08:45:09', null);

insert into TIT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (3, '2016-08-28 08:45:19', 'admin', '68d199a6-60d9-a458-a550-9039539ab251', 'Sidewalks', true, 1, null, null, '2016-08-28 08:45:19', null);

insert into TIT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (4, '2016-08-28 08:45:32', 'admin', 'fc4cfc29-5030-e555-ca2f-675e368f4a95', 'Elevators', true, 1, null, null, '2016-08-28 08:45:32', null);

insert into TIT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (5, '2016-08-28 08:45:41', 'admin', '116a66f7-e542-ec7f-d97c-06fe0070aa1a', 'Public transport', true, 1, null, null, '2016-08-28 08:45:41', null);

insert into TIT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (6, '2016-08-28 08:45:57', 'admin', '12c55610-66cc-f659-53f0-afce251eca82', 'Public transport stops', true, 1, null, null, '2016-08-28 08:45:57', null);

insert into TIT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (7, '2016-08-28 08:46:13', 'admin', '4ee81568-4a89-efc0-ef9f-0aaffb5e4728', 'Traffic lights', true, 1, null, null, '2016-08-28 08:46:13', null);

insert into TIT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (8, '2016-08-28 08:46:26', 'admin', 'dff7edc4-a66e-1b96-aec7-5217eeb08393', 'Parks', true, 1, null, null, '2016-08-28 08:46:26', null);

insert into TIT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (9, '2016-08-28 08:46:36', 'admin', '3748c853-1eda-3914-5452-fe7296c440d6', 'Parkings', true, 1, null, null, '2016-08-28 08:46:36', null);

insert into TIT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (10, '2016-08-28 08:46:49', 'admin', '01c19762-f64c-5ca9-92dd-6e2c03c08904', 'Animals', true, 1, null, null, '2016-08-28 08:46:49', null);

insert into TIT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (11, '2016-08-28 08:46:54', 'admin', 'a08e3888-d0e3-8d62-7a77-8da9f1d312c4', 'Garbage', true, 1, null, null, '2016-08-28 08:46:54', null);

-- -- -- Roles

-- Role: Citizen

insert into SEC_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE)
values ('37fba105-aac6-1be6-672d-0025c3fbb07c', 5, '2016-09-02 13:57:16', 'admin', '2016-09-03 12:34:22', 'admin', null, null, 'Citizen', null, null, 0, true);

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('a52255d8-16bc-b4fe-2c67-34fa16c825ad', 1, '2016-09-02 15:05:54', 'admin', '2016-09-02 15:05:54', null, null, null, 30, 'tit$Ticket:address', 2, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('ab5e257c-050b-7851-1558-e4eff92e6663', 1, '2016-09-02 14:11:24', 'admin', '2016-09-02 14:11:24', null, null, null, 10, 'sec$ScreenHistory.browse', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('40ef51d1-967d-c3ee-aa77-4182b0800d9a', 1, '2016-09-02 15:05:54', 'admin', '2016-09-02 15:05:54', null, null, null, 30, 'tit$Ticket:usergrade', 2, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b95f6e9e-f712-8a6c-0f8f-cc26470f745a', 1, '2016-09-02 15:05:54', 'admin', '2016-09-02 15:05:54', null, null, null, 30, 'tit$Ticket:imageFile', 2, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('67a02b22-c3e9-fa54-513b-d9d954ce0197', 1, '2016-09-02 13:57:16', 'admin', '2016-09-02 13:57:16', null, null, null, 20, 'tit$Ticket:create', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('1972f987-e3a1-1eec-fbce-584f31bee9c2', 1, '2016-09-02 15:05:54', 'admin', '2016-09-02 15:05:54', null, null, null, 30, 'tit$Ticket:plannedDate', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('223c9052-f037-2e8f-4e95-2e9392e588f0', 1, '2016-11-21 13:02:04', 'admin', '2016-11-21 13:02:04', null, null, null, 50, 'tit$Ticket.edit:executorFields', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('8a8ce261-0dc1-b6a2-f196-16056f1ae78e', 1, '2016-09-02 13:57:16', 'admin', '2016-09-02 13:57:16', null, null, null, 20, 'tit$TicketCategory:update', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('1eea9154-7f9c-46e0-20b1-8db020890700', 1, '2016-09-03 21:48:24', 'admin', '2016-09-03 21:48:24', null, null, null, 50, 'tit$Ticket.edit:moderationFields', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('36986f9f-28cb-b6e9-784d-a0e9fe13fe99', 1, '2016-09-02 15:05:54', 'admin', '2016-09-02 15:05:54', null, null, null, 30, 'tit$Ticket:body', 2, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('a334fb45-2855-4245-e572-a37457f682da', 1, '2016-09-02 14:17:33', 'admin', '2016-09-02 14:17:33', null, null, null, 50, 'tit$Ticket.browse:filter', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('2c7def8a-1f65-3d6f-5395-7b660de9eba8', 1, '2016-09-02 13:57:16', 'admin', '2016-09-02 13:57:16', null, null, null, 20, 'tit$TicketCategory:delete', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('592e9a48-c66f-09c1-932e-b407cad6f766', 1, '2016-09-02 14:11:24', 'admin', '2016-09-02 14:11:24', null, null, null, 10, 'printDomain', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('67547525-4ca8-9a70-9809-b9ae2d55924c', 1, '2016-09-02 15:05:54', 'admin', '2016-09-02 15:05:54', null, null, null, 30, 'tit$Ticket:feedback', 2, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('17640852-ea96-9ae3-63cf-5aa966d5e2e7', 1, '2016-09-02 15:05:54', 'admin', '2016-09-02 15:05:54', null, null, null, 30, 'tit$Ticket:subject', 2, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('651b2607-232b-520c-7949-14700fcd13d6', 1, '2016-09-02 13:57:16', 'admin', '2016-09-02 13:57:16', null, null, null, 20, 'tit$TicketCategory:create', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('ec684acf-4448-aa53-9660-31df1062e17c', 1, '2016-09-02 15:05:54', 'admin', '2016-09-02 15:05:54', null, null, null, 30, 'tit$Ticket:category', 2, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('ee9cb179-7e31-a880-be66-68b39eeb08b4', 1, '2016-09-02 13:57:16', 'admin', '2016-09-02 13:57:16', null, null, null, 10, 'administration', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('a8ce1a05-1a99-5d93-3001-7269029d1f6a', 1, '2016-09-03 12:14:34', 'admin', '2016-09-03 12:14:34', null, null, null, 30, 'tit$Ticket:createdBy', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('cedc5cd8-de8a-6d48-526f-19bd81dd962d', 1, '2016-09-02 14:17:33', 'admin', '2016-09-02 14:17:33', null, null, null, 50, 'tit$Ticket.browse:removeBtn', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('1d22a6f8-fbd8-5d46-1f96-1afe86f441bd', 3, '2016-09-02 15:05:54', 'admin', '2016-09-02 16:58:04', 'admin', null, null, 30, 'tit$Ticket:state', 2, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('40a957bc-1598-1089-deb0-5a7f9cad054e', 1, '2016-09-17 13:59:24', 'admin', '2016-09-17 13:59:24', null, null, null, 30, 'tit$Ticket:prioritised', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('faeafa4f-a6f1-2e19-6ed1-a74216388d0c', 1, '2016-09-02 15:05:54', 'admin', '2016-09-02 15:05:54', null, null, null, 30, 'tit$Ticket:longitude', 2, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('bee89d9e-bd54-4486-6606-40561cd6f517', 1, '2016-09-02 15:05:54', 'admin', '2016-09-02 15:05:54', null, null, null, 30, 'tit$Ticket:declineReason', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('d5485ca5-4ce7-3fd9-b90e-998129e25488', 1, '2016-09-02 14:11:24', 'admin', '2016-09-02 14:11:24', null, null, null, 10, 'logWindow', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('166fd895-9fb8-b6a3-db35-c6da72b2c344', 1, '2016-09-02 14:17:33', 'admin', '2016-09-02 14:17:33', null, null, null, 50, 'tit$Ticket.browse:refreshBtn', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('1c5905ce-4b6b-7165-9547-3c107f44a2f3', 1, '2016-09-02 15:05:54', 'admin', '2016-09-02 15:05:54', null, null, null, 30, 'tit$Ticket:assignee', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('338a2b48-158f-88fb-48bd-8b4bb5544faf', 1, '2016-09-17 13:59:24', 'admin', '2016-09-17 13:59:24', null, null, null, 30, 'tit$Ticket:emergency', 2, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('3a5d7499-2c88-108e-0963-da5e6d7dd5be', 1, '2016-09-02 15:05:54', 'admin', '2016-09-02 15:05:54', null, null, null, 30, 'tit$Ticket:latitude', 2, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('10143f8d-f3be-60ac-f9a0-8d50c3eba8ad', 1, '2016-09-02 13:57:16', 'admin', '2016-09-02 13:57:16', null, null, null, 20, 'tit$Ticket:delete', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

-- Role: Moderator

insert into SEC_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE)
values ('946015f2-cc69-2872-f476-f4825a429029', 1, '2016-09-02 12:51:32', 'admin', '2016-09-02 12:51:32', null, null, null, 'Moderator', null, null, 0, null);

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('8ef73554-5a46-8a9c-4f11-85b740fa7904', 1, '2016-09-02 13:58:31', 'admin', '2016-09-02 13:58:31', null, null, null, 10, 'administration', 0, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('e2331633-2078-66eb-e81a-dd8cc1ebb52f', 1, '2016-09-03 21:49:00', 'admin', '2016-09-03 21:49:00', null, null, null, 50, 'tit$Ticket.edit:feedbackFields', 0, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('3b0d6180-2f45-96a0-58ab-cc8b4cec15a7', 1, '2016-09-02 13:55:03', 'admin', '2016-09-02 13:55:03', null, null, null, 20, 'tit$TicketCategory:delete', 0, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('498351cb-5cda-f0b4-d5b4-080517fdb9e9', 1, '2016-09-02 13:55:03', 'admin', '2016-09-02 13:55:03', null, null, null, 20, 'tit$TicketCategory:update', 0, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('1c7db72f-cfe6-f350-1ffc-d0a264c6de9f', 1, '2016-09-02 15:02:12', 'admin', '2016-09-02 15:02:12', null, null, null, 30, 'tit$Ticket:usergrade', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('2d8078b9-f6e5-c392-b9b5-d46c1df2c521', 2, '2016-09-02 13:12:33', 'admin', '2016-09-02 13:55:03', 'admin', null, null, 20, 'tit$Ticket:update', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('73753a67-84ff-b702-a2f5-b82a75fff429', 2, '2016-09-02 13:12:33', 'admin', '2016-09-02 13:55:03', 'admin', null, null, 20, 'tit$Ticket:create', 0, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('3fb16f1a-ba53-85bd-4984-bd2f32ac79a4', 1, '2016-09-02 15:02:12', 'admin', '2016-09-02 15:02:12', null, null, null, 30, 'tit$Ticket:body', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('0ac7aa1e-f043-f604-7e90-439c52d6a6e3', 1, '2016-09-02 15:02:12', 'admin', '2016-09-02 15:02:12', null, null, null, 30, 'tit$Ticket:address', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('e7627d10-890c-d2cd-d228-92dcfc93bb3c', 1, '2016-09-02 15:02:12', 'admin', '2016-09-02 15:02:12', null, null, null, 30, 'tit$Ticket:longitude', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('e4bf5f46-e235-d445-290d-648b20cd82ee', 1, '2016-09-17 13:35:51', 'admin', '2016-09-17 13:35:51', null, null, null, 30, 'tit$Ticket:emergency', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('9b58dc8f-cdff-d721-e0b2-43bfb8ca5e63', 1, '2016-09-02 15:02:12', 'admin', '2016-09-02 15:02:12', null, null, null, 30, 'tit$Ticket:imageFile', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('04f6a61e-171f-440e-19e9-ad71d2baea14', 1, '2016-09-02 14:02:52', 'admin', '2016-09-02 14:02:52', null, null, null, 50, 'tit$Ticket.browse:removeBtn', 0, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('630611b8-aa57-9c87-b1e0-24e1ec156709', 1, '2016-09-02 13:55:03', 'admin', '2016-09-02 13:55:03', null, null, null, 20, 'tit$TicketCategory:create', 0, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b444f584-4ce9-f206-a808-e2e16d9a24a8', 1, '2016-09-02 15:02:12', 'admin', '2016-09-02 15:02:12', null, null, null, 30, 'tit$Ticket:plannedDate', 2, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('72fa1fd2-f0dd-a5b4-a53d-1244e2d37db2', 1, '2016-09-02 13:12:33', 'admin', '2016-09-02 13:12:33', null, null, null, 20, 'tit$Ticket:delete', 0, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b7bf0fb1-80b1-ef48-0e1a-60d520b7f736', 1, '2016-09-02 15:02:12', 'admin', '2016-09-02 15:02:12', null, null, null, 30, 'tit$Ticket:declineReason', 2, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('3b7fb8d9-50c4-3d0d-6f8e-5c97a5b0301c', 1, '2016-09-02 14:02:52', 'admin', '2016-09-02 14:02:52', null, null, null, 50, 'tit$Ticket.browse:createBtn', 0, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('f915fe3d-c4f2-d538-90f2-caa0e32d39c6', 1, '2016-09-02 15:02:12', 'admin', '2016-09-02 15:02:12', null, null, null, 30, 'tit$Ticket:latitude', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('c9b9b86a-c1a5-82c1-c0ae-07d3db060031', 1, '2016-11-21 13:01:10', 'admin', '2016-11-21 13:01:10', null, null, null, 50, 'tit$Ticket.edit:executorFields', 0, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('1c453e0f-b5aa-3d51-8e7e-42e98d524d0a', 1, '2016-09-02 15:02:12', 'admin', '2016-09-02 15:02:12', null, null, null, 30, 'tit$Ticket:subject', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b2017c6c-31fa-bc5e-4e40-655c014c7c46', 1, '2016-09-02 15:02:12', 'admin', '2016-09-02 15:02:12', null, null, null, 30, 'tit$Ticket:feedback', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('e634bb59-9e96-32dd-f818-51589e684011', 1, '2016-09-17 13:35:51', 'admin', '2016-09-17 13:35:51', null, null, null, 30, 'tit$Ticket:prioritised', 2, '946015f2-cc69-2872-f476-f4825a429029');

-- Role: Executor

insert into SEC_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE)
values ('cc337c4d-9510-6c4c-0495-d6f562f7f762', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 'Executor', null, null, 0, null);

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('0b665eef-8421-30b1-3348-9cfee15cf2f1', 1, '2016-09-17 14:03:03', 'admin', '2016-09-17 14:03:03', null, null, null, 20, 'tit$Ticket:delete', 0, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('e8dffa1e-3c57-95a2-a761-bf7b1593eb7b', 1, '2016-09-17 14:03:37', 'admin', '2016-09-17 14:03:37', null, null, null, 20, 'tit$TicketCategory:update', 0, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('f32d3bba-b743-a594-713b-d589f024a510', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 30, 'tit$Ticket:plannedDate', 2, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('a229f9b0-b0ea-247a-ad07-423b1f565ceb', 1, '2016-09-17 13:39:11', 'admin', '2016-09-17 13:39:11', null, null, null, 30, 'tit$Ticket:prioritised', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('05be61b3-1c65-7923-2ecf-e67ef634ed04', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 30, 'tit$Ticket:usergrade', 0, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('724624f5-cc63-8921-3c07-50fcd9fc4378', 1, '2016-09-17 14:03:03', 'admin', '2016-09-17 14:03:03', null, null, null, 20, 'tit$Ticket:update', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('d4b60e1e-0d1e-841c-8d97-a59175486134', 1, '2016-09-04 16:04:49', 'admin', '2016-09-04 16:04:49', null, null, null, 50, 'tit$Ticket.edit:moderationFields', 0, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('e5ffb186-afa2-4ad9-a730-da5d37b7a74a', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 30, 'tit$Ticket:latitude', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b315b9c3-bcdf-cb36-3026-f09c8facb3ba', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 10, 'administration', 0, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('dc751c06-824e-f12f-1ee8-3ab30535372b', 1, '2016-09-17 13:39:11', 'admin', '2016-09-17 13:39:11', null, null, null, 30, 'tit$Ticket:emergency', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('1f202578-efdb-d12f-3536-88054e61c964', 1, '2016-09-17 14:03:37', 'admin', '2016-09-17 14:03:37', null, null, null, 20, 'tit$TicketCategory:create', 0, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('4c9e2541-dc2b-daff-5557-2b3fb56b38d3', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 50, 'tit$Ticket.browse:removeBtn', 0, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('76e68c7b-3e2c-133e-d438-90f80362e833', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 30, 'tit$Ticket:address', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b7c20f14-c7d6-ea0e-e821-f7e998e819b1', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 30, 'tit$Ticket:body', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b4ea72e6-d6f5-b00c-1376-2313234fc3c0', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 30, 'tit$Ticket:state', 2, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('87a82909-5865-6ce8-21d8-271f97efe861', 1, '2016-09-17 14:03:03', 'admin', '2016-09-17 14:03:03', null, null, null, 20, 'tit$Ticket:create', 0, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('bf1c69ba-2c3d-474c-9e9b-b2b5ada87039', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 30, 'tit$Ticket:category', 2, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('724a9718-3f22-316e-db83-81ff0fa50e6f', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 30, 'tit$Ticket:imageFile', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('9e665e88-6bed-ded6-376e-0f27a0ecfb5d', 1, '2016-09-17 14:03:37', 'admin', '2016-09-17 14:03:37', null, null, null, 20, 'tit$TicketCategory:delete', 0, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b213dee3-7e90-5624-73f4-903932baacde', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 30, 'tit$Ticket:declineReason', 2, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('7a8dd979-02bc-6316-c57c-71450ac23c57', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 30, 'tit$Ticket:feedback', 0, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('0bc6d9eb-0cb9-f570-dce2-c99fc24b2a60', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 30, 'tit$Ticket:longitude', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('f318eae2-3843-8902-f3b8-72a380500e03', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 30, 'tit$Ticket:subject', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('c059a0c9-1cfe-d1a2-a7bf-d36fb9392410', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 50, 'tit$Ticket.browse:createBtn', 0, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('05342541-79e8-ed35-3c9d-bf197c42a719', 1, '2016-09-03 12:26:19', 'admin', '2016-09-03 12:26:19', null, null, null, 30, 'tit$Ticket:assignee', 2, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('095354fb-341d-5990-2c6d-e7b52dc2f807', 1, '2016-09-04 16:29:41', 'admin', '2016-09-04 16:29:41', null, null, null, 50, 'tit$Ticket.edit:feedbackFields', 0, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

-- Role: Guest

insert into SEC_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE)
values ('89add093-07fb-74e4-7274-c83c3dea8891', 1, '2016-11-06 16:29:35', 'admin', '2016-11-06 16:29:35', null, null, null, 'Guest', null, null, 20, null);

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('f8dffb20-1e14-3640-d75a-984768772239', 1, '2016-11-06 16:29:35', 'admin', '2016-11-06 16:29:35', null, null, null, 10, 'logWindow', 0, '89add093-07fb-74e4-7274-c83c3dea8891');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('af073000-be4f-149f-93f3-4aef10cda3cd', 1, '2016-11-06 16:29:35', 'admin', '2016-11-06 16:29:35', null, null, null, 10, 'administration', 0, '89add093-07fb-74e4-7274-c83c3dea8891');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('ea615da4-542a-ae4b-839c-b92b09418586', 1, '2016-11-06 16:29:35', 'admin', '2016-11-06 16:29:35', null, null, null, 10, 'sec$ScreenHistory.browse', 0, '89add093-07fb-74e4-7274-c83c3dea8891');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('4c2fed2f-e78b-5d97-3597-5c5af71e0310', 1, '2016-11-06 16:29:35', 'admin', '2016-11-06 16:29:35', null, null, null, 10, 'printDomain', 0, '89add093-07fb-74e4-7274-c83c3dea8891');

-- -- -- Access groups

-- Access group: Staff (Just renaming of default group)
update SEC_GROUP
set NAME='Staff'
where ID='0fa2b1a5-1d68-4d69-9fbd-dff348347f93';

-- Access group: Staff.Admins; Move default admin user there

insert into SEC_GROUP
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID)
values ('aa1242bf-0ad9-d333-703c-3354fefe09cb', '2016-09-03 12:27:56', 'admin', 1, '2016-09-03 12:27:56', null, null, null, 'Admins', null);

update SEC_USER
set GROUP_ID='aa1242bf-0ad9-d333-703c-3354fefe09cb'
where ID='60885987-1b61-4247-94c7-dff348347f93';

-- Access group: Staff.Executors and constraints

insert into SEC_GROUP
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID)
values ('97d1aa13-03b6-1b88-a275-3ccbd22acda5', '2016-09-03 12:26:52', 'admin', 1, '2016-09-03 12:26:52', null, null, null, 'Executors', '0fa2b1a5-1d68-4d69-9fbd-dff348347f93');

insert into SEC_CONSTRAINT
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, CHECK_TYPE, OPERATION_TYPE, CODE, ENTITY_NAME, JOIN_CLAUSE, WHERE_CLAUSE, GROOVY_SCRIPT, FILTER_XML, IS_ACTIVE, GROUP_ID)
values ('90e98b5c-178c-c9f2-d895-8130737c0881', '2016-09-04 10:20:47', 'admin', 1, '2016-09-04 10:20:47', null, null, null, 'db', 'all', null, 'tit$Ticket', null, '{E}.assignee.id = :session$userId', null, null, true, '97d1aa13-03b6-1b88-a275-3ccbd22acda5');

insert into SEC_CONSTRAINT
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, CHECK_TYPE, OPERATION_TYPE, CODE, ENTITY_NAME, JOIN_CLAUSE, WHERE_CLAUSE, GROOVY_SCRIPT, FILTER_XML, IS_ACTIVE, GROUP_ID)
values ('22e79bdf-7158-75b8-21ba-a20031ece1be', 2, '2016-11-21 12:28:06', 'admin', '2016-11-21 12:38:42', 'admin', null, null, 'db', 'read', null, 'sec$User', null, '{E}.group.id=''97d1aa13-03b6-1b88-a275-3ccbd22acda5'' or {E}.group.id=''307285e3-6b1e-7982-59a0-0ed6e5fa9615''', null, null, true, '97d1aa13-03b6-1b88-a275-3ccbd22acda5');

-- Access group: Staff.Moderators

insert into SEC_GROUP
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID)
values ('307285e3-6b1e-7982-59a0-0ed6e5fa9615', '2016-09-03 12:27:42', 'admin', 1, '2016-09-03 12:27:42', null, null, null, 'Moderators', '0fa2b1a5-1d68-4d69-9fbd-dff348347f93');

insert into SEC_CONSTRAINT
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, CHECK_TYPE, OPERATION_TYPE, CODE, ENTITY_NAME, JOIN_CLAUSE, WHERE_CLAUSE, GROOVY_SCRIPT, FILTER_XML, IS_ACTIVE, GROUP_ID)
values ('bc5370be-b0c8-372e-d10e-b8c2241c906e', 3, '2016-11-21 12:33:48', 'admin', '2016-11-21 12:47:26', 'admin', null, null, 'db', 'read', null, 'sec$User', null, '{E}.group.id=''97d1aa13-03b6-1b88-a275-3ccbd22acda5''', null, null, true, '307285e3-6b1e-7982-59a0-0ed6e5fa9615');

-- Access group: Town citizens and constraints

insert into SEC_GROUP
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID)
values ('9b27a9f0-6836-4602-cd87-1824e5017182', '2016-09-02 16:29:17', 'admin', 1, '2016-09-02 16:29:17', null, null, null, 'Town citizens', null);

insert into SEC_CONSTRAINT
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, CHECK_TYPE, OPERATION_TYPE, CODE, ENTITY_NAME, JOIN_CLAUSE, WHERE_CLAUSE, GROOVY_SCRIPT, FILTER_XML, IS_ACTIVE, GROUP_ID)
values ('eecd9de2-e324-9dd8-0e59-81f08f9285f2', '2016-09-04 10:18:43', 'admin', 1, '2016-09-04 10:18:43', null, null, null, 'db', 'all', null, 'tit$Ticket', null, '{E}.createdBy = :session$userLogin', null, null, true, '9b27a9f0-6836-4602-cd87-1824e5017182');

insert into SEC_CONSTRAINT
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, CHECK_TYPE, OPERATION_TYPE, CODE, ENTITY_NAME, JOIN_CLAUSE, WHERE_CLAUSE, GROOVY_SCRIPT, FILTER_XML, IS_ACTIVE, GROUP_ID)
values ('2266cc94-2600-45bf-a960-027480b66092', 1, '2016-11-21 12:44:26', 'admin', '2016-11-21 12:44:26', null, null, null, 'db', 'read', null, 'sec$User', null, '{E}.group.id=''97d1aa13-03b6-1b88-a275-3ccbd22acda5'' or {E}.group.id=''307285e3-6b1e-7982-59a0-0ed6e5fa9615''', null, null, true, '9b27a9f0-6836-4602-cd87-1824e5017182');

-- Access group: Guests; Move anonymous user there

insert into SEC_GROUP
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID)
values ('280ee603-238e-ac5d-bfbf-ffc97d381b5a', 2, '2016-11-05 19:04:02', 'admin', '2016-11-05 19:04:25', 'admin', null, null, 'Guests', null);

update SEC_USER
set GROUP_ID='280ee603-238e-ac5d-bfbf-ffc97d381b5a'
where ID='a405db59-e674-4f63-8afe-269dda788fe8';

-- -- -- Role assignments

-- Guest role to anonymous user

insert into SEC_USER_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, USER_ID, ROLE_ID)
values ('d6273817-4443-391e-e0f2-503077b90646', null, null, null, null, null, null, null, 'a405db59-e674-4f63-8afe-269dda788fe8', '89add093-07fb-74e4-7274-c83c3dea8891');