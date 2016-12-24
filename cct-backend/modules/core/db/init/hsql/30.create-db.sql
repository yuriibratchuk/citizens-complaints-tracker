-- TIPS REGARD UPDATING THIS FILE:
-- Log in as Admin, using
--       Administration -> (e.g)Roles -> right click on element -> System Information -> Script for insert
-- get an SQL for pasting here.

-- <editor-fold desc="Ticket categories">
insert into CCT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (1, '2016-08-28 08:45:03', 'admin', 'be6ef31a-fc4d-2c98-be4f-78497c1bb087', 'Other', true, 1, null, null, '2016-08-28 08:45:03', null);

insert into CCT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (2, '2016-08-28 08:45:09', 'admin', '91d97348-4f5e-819f-00be-5781be6aadca', 'Roads', true, 1, null, null, '2016-08-28 08:45:09', null);

insert into CCT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (3, '2016-08-28 08:45:19', 'admin', '68d199a6-60d9-a458-a550-9039539ab251', 'Sidewalks', true, 1, null, null, '2016-08-28 08:45:19', null);

insert into CCT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (4, '2016-08-28 08:45:32', 'admin', 'fc4cfc29-5030-e555-ca2f-675e368f4a95', 'Elevators', true, 1, null, null, '2016-08-28 08:45:32', null);

insert into CCT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (5, '2016-08-28 08:45:41', 'admin', '116a66f7-e542-ec7f-d97c-06fe0070aa1a', 'Public transport', true, 1, null, null, '2016-08-28 08:45:41', null);

insert into CCT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (6, '2016-08-28 08:45:57', 'admin', '12c55610-66cc-f659-53f0-afce251eca82', 'Public transport stops', true, 1, null, null, '2016-08-28 08:45:57', null);

insert into CCT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (7, '2016-08-28 08:46:13', 'admin', '4ee81568-4a89-efc0-ef9f-0aaffb5e4728', 'Traffic lights', true, 1, null, null, '2016-08-28 08:46:13', null);

insert into CCT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (8, '2016-08-28 08:46:26', 'admin', 'dff7edc4-a66e-1b96-aec7-5217eeb08393', 'Parks', true, 1, null, null, '2016-08-28 08:46:26', null);

insert into CCT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (9, '2016-08-28 08:46:36', 'admin', '3748c853-1eda-3914-5452-fe7296c440d6', 'Parkings', true, 1, null, null, '2016-08-28 08:46:36', null);

insert into CCT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (10, '2016-08-28 08:46:49', 'admin', '01c19762-f64c-5ca9-92dd-6e2c03c08904', 'Animals', true, 1, null, null, '2016-08-28 08:46:49', null);

insert into CCT_TICKET_CATEGORY
(ID, CREATE_TS, CREATED_BY, UUID, NAME, ENABLED, VERSION, DELETE_TS, DELETED_BY, UPDATE_TS, UPDATED_BY)
values (11, '2016-08-28 08:46:54', 'admin', 'a08e3888-d0e3-8d62-7a77-8da9f1d312c4', 'Garbage', true, 1, null, null, '2016-08-28 08:46:54', null);
-- </editor-fold>

-- <editor-fold desc="Roles">

-- <editor-fold desc="Role: Citizen">
insert into SEC_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE)
values ('37fba105-aac6-1be6-672d-0025c3fbb07c', 7, '2016-09-02 13:57:16', 'admin', '2016-12-24 11:51:07', 'admin', null, null, 'Citizen', null, null, 30, false);

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('95df642f-a5c6-2bec-0c37-2b926ea9a4d7', 1, '2016-12-24 11:39:32', 'admin', '2016-12-24 11:39:32', null, null, null, 30, 'cct$Ticket:plannedDate', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('14cc9d8b-3781-e29c-ea05-60c5ea4a51b2', 1, '2016-12-22 10:46:45', 'admin', '2016-12-22 10:46:45', null, null, null, 50, 'cct$Ticket.edit:moderationFields', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('d7677474-eb0c-038e-c90d-274cc668afdc', 1, '2016-12-23 09:15:42', 'admin', '2016-12-23 09:15:42', null, null, null, 20, 'cct$TicketCategory:read', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b4c2490e-a778-467d-6eaa-0c012ddc315b', 1, '2016-12-22 12:08:12', 'admin', '2016-12-22 12:08:12', null, null, null, 30, 'cct$Ticket:assignee', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('021e2f86-9d3d-78fb-74e9-ee8133c322b2', 1, '2016-12-23 09:13:51', 'admin', '2016-12-23 09:13:51', null, null, null, 20, 'cct$Ticket:read', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('88b0bd3c-c1ee-0452-f89e-29deb88d415a', 1, '2016-12-23 09:09:11', 'admin', '2016-12-23 09:09:11', null, null, null, 40, 'cuba.restApi.enabled', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('5260d627-9eee-e30f-3d38-957c07e131ea', 1, '2016-12-22 12:08:12', 'admin', '2016-12-22 12:08:12', null, null, null, 30, 'cct$Ticket:prioritised', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('436490ef-a21c-8a52-08c2-3212909e87c5', 1, '2016-12-23 17:05:54', 'admin', '2016-12-23 17:05:54', null, null, null, 20, 'sys$FileDescriptor:read', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('160d2eb4-95cc-d328-7dfd-65f84519116e', 1, '2016-12-22 12:08:12', 'admin', '2016-12-22 12:08:12', null, null, null, 30, 'cct$Ticket:declineReason', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('f56bc3eb-faa3-ea1d-733d-c54eed8cea90', 1, '2016-12-23 09:13:51', 'admin', '2016-12-23 09:13:51', null, null, null, 20, 'cct$Ticket:create', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('4bb0661c-8af5-2a1c-2916-aeae34771cd8', 1, '2016-12-23 17:05:54', 'admin', '2016-12-23 17:05:54', null, null, null, 20, 'sys$FileDescriptor:create', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('c263fd2f-0512-232c-0080-97b498f0f7a5', 1, '2016-12-22 12:08:12', 'admin', '2016-12-22 12:08:12', null, null, null, 30, 'cct$Ticket:state', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('c53c4aca-5977-4b25-1a74-c5424d53a0f4', 1, '2016-12-23 17:10:01', 'admin', '2016-12-23 17:10:01', null, null, null, 20, 'sec$User:read', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('a72ae407-ee75-ecc4-5cde-de3e5554eb7d', 1, '2016-12-23 09:09:11', 'admin', '2016-12-23 09:09:11', null, null, null, 40, 'cuba.gui.loginToClient', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('6097cf34-66b1-9d5c-be8b-dc102b7715fb', 1, '2016-12-23 09:12:02', 'admin', '2016-12-23 09:12:02', null, null, null, 10, 'cct$Ticket.edit', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('d7fa6066-ae75-2bad-7f13-44567d4f7d17', 1, '2016-12-22 12:08:12', 'admin', '2016-12-22 12:08:12', null, null, null, 30, 'cct$Ticket:executorRemark', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('a9fc3a81-77a0-56a0-76e4-9878c0b0326b', 1, '2016-12-23 09:12:02', 'admin', '2016-12-23 09:12:02', null, null, null, 10, 'cct$Ticket.browse', 1, '37fba105-aac6-1be6-672d-0025c3fbb07c');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b69ebb5c-33a5-8a74-5bd5-e8a10cb3922b', 1, '2016-12-22 12:08:12', 'admin', '2016-12-22 12:08:12', null, null, null, 30, 'cct$Ticket:moderatorRemark', 0, '37fba105-aac6-1be6-672d-0025c3fbb07c');
-- </editor-fold>

-- <editor-fold desc="Role: Executor">
insert into SEC_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE)
values ('cc337c4d-9510-6c4c-0495-d6f562f7f762', 2, '2016-09-03 12:26:19', 'admin', '2016-12-23 10:29:43', 'admin', null, null, 'Executor', null, null, 30, null);

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('0b8d00e4-217c-585b-9a94-375563185115', 1, '2016-12-22 12:05:09', 'admin', '2016-12-22 12:05:09', null, null, null, 30, 'cct$Ticket:subject', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('80c7ef31-69e7-3ae5-f085-69bae11b8a13', 1, '2016-12-22 12:05:09', 'admin', '2016-12-22 12:05:09', null, null, null, 30, 'cct$Ticket:imageFile', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('c8121f55-2d1d-f5cf-8255-2f6c2161652a', 1, '2016-12-23 17:14:15', 'admin', '2016-12-23 17:14:15', null, null, null, 20, 'sys$FileDescriptor:read', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('003354ed-0802-1979-fff6-a9fbfa4f0acf', 1, '2016-12-23 19:32:32', 'admin', '2016-12-23 19:32:32', null, null, null, 10, 'help', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('9720d990-63e3-116c-ceac-c23e54b7cdb3', 1, '2016-12-23 10:29:43', 'admin', '2016-12-23 10:29:43', null, null, null, 40, 'cuba.gui.loginToClient', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b0a88647-1596-b17e-f69a-7784f3ace61e', 1, '2016-12-23 10:29:43', 'admin', '2016-12-23 10:29:43', null, null, null, 10, 'cct$Ticket.browse', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('6fef4583-d9c8-ca59-1398-6e83cf458b6f', 1, '2016-12-23 10:29:43', 'admin', '2016-12-23 10:29:43', null, null, null, 20, 'cct$TicketCategory:read', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('f272dd67-bcb9-f85f-6b63-75e9c5bd2f89', 1, '2016-12-22 12:05:09', 'admin', '2016-12-22 12:05:09', null, null, null, 30, 'cct$Ticket:address', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('ca2706f0-4a8c-c4e7-9c1d-2bdbd7feec94', 1, '2016-12-22 12:05:09', 'admin', '2016-12-22 12:05:09', null, null, null, 30, 'cct$Ticket:body', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('3d1b27b5-810c-a65b-0a26-2171284f68b0', 1, '2016-12-23 10:29:43', 'admin', '2016-12-23 10:29:43', null, null, null, 10, 'cct$Ticket.edit', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b4fb3604-9bd0-d716-1f1e-663ac017d59b', 1, '2016-12-23 16:06:37', 'admin', '2016-12-23 16:06:37', null, null, null, 10, 'sec$User.lookup', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('d09b48bc-a164-6969-20d4-bba91ee8e1ce', 1, '2016-12-23 16:06:37', 'admin', '2016-12-23 16:06:37', null, null, null, 20, 'sec$User:read', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('19ca75b3-69d4-b902-d0ed-03fcacc2b86e', 1, '2016-12-23 10:29:43', 'admin', '2016-12-23 10:29:43', null, null, null, 20, 'cct$Ticket:update', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('f2ff4c4c-128f-6c7e-9b88-5cc5e84f7633', 1, '2016-12-22 12:05:09', 'admin', '2016-12-22 12:05:09', null, null, null, 30, 'cct$Ticket:longitude', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('1110101d-5f82-3d9a-53f5-fe7c4ddc5455', 1, '2016-12-23 10:29:43', 'admin', '2016-12-23 10:29:43', null, null, null, 20, 'cct$Ticket:read', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('05a607f8-4711-7ca8-73ed-f41c43e1948f', 1, '2016-12-23 19:22:40', 'admin', '2016-12-23 19:22:40', null, null, null, 40, 'cuba.gui.filter.edit', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b9ed8f2b-0938-7385-9032-8d1a7827208d', 1, '2016-12-23 10:29:43', 'admin', '2016-12-23 10:29:43', null, null, null, 10, 'settings', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b0ac75f5-a4c5-ee36-9151-f754bc1ba50d', 1, '2016-12-22 12:05:09', 'admin', '2016-12-22 12:05:09', null, null, null, 30, 'cct$Ticket:prioritised', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('fc4c491b-79a2-81e0-35b2-63711be264ee', 1, '2016-12-22 12:05:09', 'admin', '2016-12-22 12:05:09', null, null, null, 30, 'cct$Ticket:latitude', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('3e122a1a-91c8-efc2-212e-f5c012cb7bd8', 1, '2016-12-22 12:05:09', 'admin', '2016-12-22 12:05:09', null, null, null, 30, 'cct$Ticket:emergency', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('9e28ea9f-161f-bad1-a607-f081ef925d52', 1, '2016-12-22 12:05:09', 'admin', '2016-12-22 12:05:09', null, null, null, 30, 'cct$Ticket:moderatorRemark', 1, 'cc337c4d-9510-6c4c-0495-d6f562f7f762');
-- </editor-fold>

-- <editor-fold desc="Role: Moderator">
insert into SEC_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE)
values ('946015f2-cc69-2872-f476-f4825a429029', 2, '2016-09-02 12:51:32', 'admin', '2016-12-23 10:22:26', 'admin', null, null, 'Moderator', null, null, 30, null);

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b380401d-47c9-332a-f000-99cdbe00f3b1', 1, '2016-12-23 10:22:26', 'admin', '2016-12-23 10:22:26', null, null, null, 40, 'cuba.gui.loginToClient', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('9f759ba6-a355-e46b-08e6-bd142537bf6c', 1, '2016-12-22 12:03:38', 'admin', '2016-12-22 12:03:38', null, null, null, 30, 'cct$Ticket:longitude', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('d81ad435-948d-bb4a-9a0f-5d3365946de4', 1, '2016-12-23 10:22:26', 'admin', '2016-12-23 10:22:26', null, null, null, 40, 'cuba.gui.showExceptionDetails', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('961fcf7b-b2b6-59be-4832-5f9bfa966b94', 1, '2016-12-23 10:22:26', 'admin', '2016-12-23 10:22:26', null, null, null, 20, 'cct$Ticket:update', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('115ae9a9-b75d-1d4b-d1c6-2608d36b5527', 1, '2016-12-22 12:03:38', 'admin', '2016-12-22 12:03:38', null, null, null, 30, 'cct$Ticket:subject', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('063e1dd5-614e-7103-8a8a-dbb06179dd4e', 1, '2016-12-22 12:03:38', 'admin', '2016-12-22 12:03:38', null, null, null, 30, 'cct$Ticket:executorRemark', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('ff02cd6a-906d-9d65-8145-7fb0bed486ac', 1, '2016-12-23 10:22:26', 'admin', '2016-12-23 10:22:26', null, null, null, 10, 'cct$Ticket.browse', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('d120f403-d90c-40ff-40b5-e3345f50842c', 1, '2016-12-23 10:22:26', 'admin', '2016-12-23 10:22:26', null, null, null, 10, 'cct$Ticket.edit', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('3fc2934d-bf18-7f46-bc20-5ccbfb764182', 1, '2016-12-22 12:03:38', 'admin', '2016-12-22 12:03:38', null, null, null, 30, 'cct$Ticket:imageFile', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('f2f94b90-480a-42dc-b1d3-84895660414a', 1, '2016-12-23 10:30:18', 'admin', '2016-12-23 10:30:18', null, null, null, 10, 'settings', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('f8696bd6-4ceb-b705-22ba-397e110e2dd4', 1, '2016-12-23 10:22:26', 'admin', '2016-12-23 10:22:26', null, null, null, 20, 'cct$TicketCategory:read', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('a3591a08-5a1b-dbc7-68e6-147d0e26e01f', 1, '2016-12-23 17:13:32', 'admin', '2016-12-23 17:13:32', null, null, null, 20, 'sys$FileDescriptor:read', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('7d805e70-6f49-4f0f-1460-4fca0cc43948', 1, '2016-12-23 19:16:05', 'admin', '2016-12-23 19:16:05', null, null, null, 10, 'help', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('6daeb35c-4702-0d9e-4619-2a82bf86ee61', 1, '2016-12-23 10:22:26', 'admin', '2016-12-23 10:22:26', null, null, null, 20, 'cct$Ticket:read', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('62b4c5a2-7b48-012d-0941-8623c6923bb6', 1, '2016-12-22 12:03:38', 'admin', '2016-12-22 12:03:38', null, null, null, 30, 'cct$Ticket:body', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('2cd7ab09-3af5-861a-7124-d453a60066f3', 1, '2016-12-22 12:03:38', 'admin', '2016-12-22 12:03:38', null, null, null, 30, 'cct$Ticket:emergency', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('8d7206c2-d9f4-17d2-c8c5-1d5faa6f8494', 1, '2016-12-22 12:03:38', 'admin', '2016-12-22 12:03:38', null, null, null, 30, 'cct$Ticket:latitude', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('58e7eb7e-065b-9765-8243-cda02383e0dd', 1, '2016-12-22 12:03:38', 'admin', '2016-12-22 12:03:38', null, null, null, 30, 'cct$Ticket:address', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b10d6cfa-3c8d-4815-4019-06e295fc3753', 1, '2016-12-23 16:01:45', 'admin', '2016-12-23 16:01:45', null, null, null, 10, 'sec$User.lookup', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('847bd18b-3c9e-eb65-8744-058b5ae945d3', 1, '2016-12-23 10:44:34', 'admin', '2016-12-23 10:44:34', null, null, null, 20, 'sec$User:read', 1, '946015f2-cc69-2872-f476-f4825a429029');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('ee7dd575-f021-97a0-0dcc-b243755e47a7', 1, '2016-12-23 19:21:45', 'admin', '2016-12-23 19:21:45', null, null, null, 40, 'cuba.gui.filter.edit', 1, '946015f2-cc69-2872-f476-f4825a429029');
-- </editor-fold>

-- <editor-fold desc="Role: Guest">
insert into SEC_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE)
values ('89add093-07fb-74e4-7274-c83c3dea8891', 1, '2016-11-06 16:29:35', 'admin', '2016-11-06 16:29:35', null, null, null, 'Guest', null, null, 20, null);
-- </editor-fold>

-- </editor-fold>

-- <editor-fold desc="Access groups">

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
values ('90e98b5c-178c-c9f2-d895-8130737c0881', '2016-09-04 10:20:47', 'admin', 1, '2016-09-04 10:20:47', null, null, null, 'db', 'all', null, 'cct$Ticket', null, '{E}.assignee.id = :session$userId', null, null, true, '97d1aa13-03b6-1b88-a275-3ccbd22acda5');

-- Access group: Staff.Moderators
insert into SEC_GROUP
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID)
values ('307285e3-6b1e-7982-59a0-0ed6e5fa9615', '2016-09-03 12:27:42', 'admin', 1, '2016-09-03 12:27:42', null, null, null, 'Moderators', '0fa2b1a5-1d68-4d69-9fbd-dff348347f93');

-- Access group: Citizens and constraints
insert into SEC_GROUP
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID)
values ('9b27a9f0-6836-4602-cd87-1824e5017182', '2016-09-02 16:29:17', 'admin', 1, '2016-09-02 16:29:17', null, null, null, 'Citizens', null);

-- full access to accepted tickets or created by itself
insert into SEC_CONSTRAINT
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, CHECK_TYPE, OPERATION_TYPE, CODE, ENTITY_NAME, JOIN_CLAUSE, WHERE_CLAUSE, GROOVY_SCRIPT, FILTER_XML, IS_ACTIVE, GROUP_ID)
values ('eecd9de2-e324-9dd8-0e59-81f08f9285f2', 2, '2016-09-04 10:18:43', 'admin', '2016-12-22 12:26:02', 'admin', null, null, 'db', 'all', null, 'cct$Ticket', null, '{E}.createdBy = :session$userLogin or {E}.state is not NULL', null, null, true, '9b27a9f0-6836-4602-cd87-1824e5017182');

-- allow to read user information of itself or users in the following groups: executors, moderators
insert into SEC_CONSTRAINT
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, CHECK_TYPE, OPERATION_TYPE, CODE, ENTITY_NAME, JOIN_CLAUSE, WHERE_CLAUSE, GROOVY_SCRIPT, FILTER_XML, IS_ACTIVE, GROUP_ID)
values ('2266cc94-2600-45bf-a960-027480b66092', 2, '2016-11-21 12:44:26', 'admin', '2016-12-22 12:27:47', 'admin', null, null, 'db', 'read', null, 'sec$User', null, '{E}.group.id=''97d1aa13-03b6-1b88-a275-3ccbd22acda5'' or {E}.group.id=''307285e3-6b1e-7982-59a0-0ed6e5fa9615'' or {E}.id = :session$userId', null, null, true, '9b27a9f0-6836-4602-cd87-1824e5017182');

-- Access group: Guests; Move anonymous user there
insert into SEC_GROUP
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID)
values ('280ee603-238e-ac5d-bfbf-ffc97d381b5a', 2, '2016-11-05 19:04:02', 'admin', '2016-11-05 19:04:25', 'admin', null, null, 'Guests', null);

update SEC_USER
set GROUP_ID='280ee603-238e-ac5d-bfbf-ffc97d381b5a'
where ID='a405db59-e674-4f63-8afe-269dda788fe8';

-- </editor-fold>

-- <editor-fold desc="Role assignments">

-- Guest role to anonymous user
insert into SEC_USER_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, USER_ID, ROLE_ID)
values ('d6273817-4443-391e-e0f2-503077b90646', null, null, null, null, null, null, null, 'a405db59-e674-4f63-8afe-269dda788fe8', '89add093-07fb-74e4-7274-c83c3dea8891');

-- </editor-fold>