BEGIN TRANSACTION;

INSERT INTO privilege (id, privilege, public_uuid)
VALUES ('200e4567-e89b-12d3-a456-506614174000', 'user:create', 'e9b99b61-fd19-4ef4-91ba-b7d828318f6b'),
       ('200e4567-e89b-12d3-a456-506614174001', 'user:read', '8e03806b-2b14-46c0-858e-6e88ab5e48cd'),
       ('200e4567-e89b-12d3-a456-506614174002', 'user:update', 'ad8e6bde-66b1-47f5-af44-6f516299f58f'),
       ('200e4567-e89b-12d3-a456-506614174003', 'user:delete', '49c8b7bb-d4fb-457c-9828-c14f0a2278b6');

INSERT INTO user_role (id, user_role_name, user_role_description, public_uuid)
VALUES ('300e4567-e89b-12d3-a456-706614174000', 'STANDART_CLIENT', 'STANDART BANK CLIENT', '869d84a9-9bfc-44ba-9890-62a9c20dcb75'),
       ('310e4567-e89b-12d3-a456-706614174001', 'SENIOR_OPERATOR', 'HIGH LEVEL EMPLOYEE', '0a1460f2-0f60-4140-9b5c-e5388bcfcb9f');


INSERT INTO role_privilege (role_id, privilege_id)
VALUES ('300e4567-e89b-12d3-a456-706614174000', '200e4567-e89b-12d3-a456-506614174000'),
       ('300e4567-e89b-12d3-a456-706614174000', '200e4567-e89b-12d3-a456-506614174001'),
       ('300e4567-e89b-12d3-a456-706614174000', '200e4567-e89b-12d3-a456-506614174002'),
       ('310e4567-e89b-12d3-a456-706614174001', '200e4567-e89b-12d3-a456-506614174000'),
       ('310e4567-e89b-12d3-a456-706614174001', '200e4567-e89b-12d3-a456-506614174001'),
       ('310e4567-e89b-12d3-a456-706614174001', '200e4567-e89b-12d3-a456-506614174002'),
       ('310e4567-e89b-12d3-a456-706614174001', '200e4567-e89b-12d3-a456-506614174003');

INSERT INTO passport (id, lastname, firstname, surname, birthday_date, issue_date, expiration_date, passport_serial, is_us_resident, public_uuid)
VALUES ('400e4567-e89b-12d3-a456-400614174000', 'VOLKOV', 'VIKTOR', 'ALEKSANDROVICH', '1992-02-14 00:00:00', '2021-02-15 00:00:00', '2031-02-15 00:00:00', '2341254E456PB5', true, '7262660f-acd5-4898-bdad-5401c9804a24'),
       ('400e4567-e89b-12d3-a456-400614174001', 'PAVLOVICH', 'VIKTOR', 'ALEKSEEVICH', '1996-01-21 00:00:00', '2021-02-15 00:00:00', '2031-02-15 00:00:00', '6543898E456PM5', false, '35fe2647-5750-492e-a294-b9d883a6f00a'),
       ('400e4567-e89b-12d3-a456-400614174002', 'TICHONOV', 'IVAN', 'VIKTOROVICH', '1996-02-10 00:00:00', '2021-02-15 00:00:00', '2031-02-15 00:00:00', '2341254E448PB1', true, '492560db-0d26-4b25-8e96-2819461d9ca5'),
       ('400e4567-e89b-12d3-a456-400614174003', 'BLADE', 'SONYA', 'MORTALKOMBATOVNA', '1998-09-20 00:00:00', '2021-02-15 00:00:00', '2031-02-15 00:00:00', '5066818E452BP7', true, 'ce410c15-9166-494d-980c-37a958f9d0e2'),
       ('400e4567-e89b-12d3-a456-400614174004', 'CAGE', 'CASSEY', 'MORTALKOMBATOVNA', '1998-09-20 00:00:00', '2021-02-15 00:00:00', '2031-02-15 00:00:00', '4167828E453BP2', true, '253fb778-bd48-41c7-a6b6-bfdeab80ada3'),
       ('400e4567-e89b-12d3-a456-400614174005', 'SMITH', 'MORTY', 'JERRY', '1998-09-20 00:00:00', '2021-02-15 00:00:00', '2031-02-15 00:00:00', '4268838E454BP4', true, '868b8a06-4452-4ecd-889e-bcee1ea21e14'),
       ('400e4567-e89b-12d3-a456-400614174006', 'SMITH', 'SUMMER', 'BETH', '1998-09-20 00:00:00', '2021-02-15 00:00:00', '2031-02-15 00:00:00', '4969848E465BP9', true, 'b437d929-a0b5-4af5-849e-3bd3adda1776'),
       ('400e4567-e89b-12d3-a456-400614174007', 'BRIGGS', 'JACQUI', 'MORTALKOMBATOVNA', '1998-09-20 00:00:00', '2021-02-15 00:00:00', '2031-02-15 00:00:00', '4965851E456BP1', true, '28d3f8bd-eb35-43ca-af43-ae18abdc8836'),
       ('400e4567-e89b-12d3-a456-400614174008', 'SUNCHESS', 'RICK', 'UNIVERSAROVICH', '1998-09-20 00:00:00', '2021-02-15 00:00:00', '2031-02-15 00:00:00', '4865818E452BP1', true, 'ed4108ac-7bd0-49ef-8294-65eb8c4aa6ce'),
       ('400e4567-e89b-12d3-a456-400614174009', 'SMITH', 'BETH', 'JHOANNA', '1998-09-20 00:00:00', '2021-02-15 00:00:00', '2031-02-15 00:00:00', '4915998E452BP4', true, 'd198ae50-d496-498e-a884-bb991c60434b');
        
COMMIT TRANSACTION;

BEGIN TRANSACTION;

INSERT INTO api_user (id, public_uuid, role_id, passport_id)
VALUES ('500e4567-e89b-20d3-a456-600614174000', '123e4567-e89b-12d3-a456-426614174000', '300e4567-e89b-12d3-a456-706614174000', '400e4567-e89b-12d3-a456-400614174000'),
       ('500e4567-e89b-20d3-a456-600614174001', '123e4568-e89b-12d3-a456-426614174001', '300e4567-e89b-12d3-a456-706614174000', '400e4567-e89b-12d3-a456-400614174001'),
       ('500e4567-e89b-20d3-a456-600614174002', '123e4569-e89b-12d3-a456-426614174002', '300e4567-e89b-12d3-a456-706614174000', '400e4567-e89b-12d3-a456-400614174002'),
       ('500e4567-e89b-20d3-a456-600614174003', '123e4570-e89b-12d3-a456-426614174003', '300e4567-e89b-12d3-a456-706614174000', '400e4567-e89b-12d3-a456-400614174003'),
       ('500e4567-e89b-20d3-a456-600614174004', '123e4571-e89b-12d3-a456-426614174004', '300e4567-e89b-12d3-a456-706614174000', '400e4567-e89b-12d3-a456-400614174004'),
       ('500e4567-e89b-20d3-a456-600614174005', '123e4572-e89b-12d3-a456-426614174005', '300e4567-e89b-12d3-a456-706614174000', '400e4567-e89b-12d3-a456-400614174005'),
       ('500e4567-e89b-20d3-a456-600614174006', '123e4573-e89b-12d3-a456-426614174006', '300e4567-e89b-12d3-a456-706614174000', '400e4567-e89b-12d3-a456-400614174006'),
       ('500e4567-e89b-20d3-a456-600614174007', '123e4574-e89b-12d3-a456-426614174007', '300e4567-e89b-12d3-a456-706614174000', '400e4567-e89b-12d3-a456-400614174007'),
       ('500e4567-e89b-20d3-a456-600614174008', '123e4575-e89b-12d3-a456-426614174008', '300e4567-e89b-12d3-a456-706614174000', '400e4567-e89b-12d3-a456-400614174008'),
       ('500e4567-e89b-20d3-a456-600614174009', '123e4576-e89b-12d3-a456-426614174009', '300e4567-e89b-12d3-a456-706614174000', '400e4567-e89b-12d3-a456-400614174009');

COMMIT TRANSACTION;

BEGIN TRANSACTION;

INSERT INTO credential (phone_login, passport_login, password, registration_date, last_login_date, secret_question, secret_question_answer, is_active, is_non_locked, user_id, is_credential_non_expired, public_uuid, is_us_resident)
VALUES ('375331001010', '2341254E456PB5', '$2a$10$SDlcrj6PhK0yygayrSLfsuzDmi05ros6WBzyBAFICu5ZYv78QyMGu', '2022-02-15 00:00:00', '2022-02-15 00:00:00', 'What is your mother''s maiden name?', 'FROLOVA', true, true, '500e4567-e89b-20d3-a456-600614174000', true, 'c218aad3-30f3-4661-a310-24fb45b0c0ff', false),
       ('375331001011', '6543898E456PM5', '$2a$10$SDlcrj6PhK0yygayrSLfsuzDmi05ros6WBzyBAFICu5ZYv78QyMGu', '2022-02-15 00:00:00', '2022-02-15 00:00:00', 'What is your mother''s maiden name?', 'MARKOVA', true, true, '500e4567-e89b-20d3-a456-600614174001', true, '079ba448-4baf-4094-9f43-65dc6470e800', true),
       ('375331001012', '2341254E448PB1', '$2a$10$SDlcrj6PhK0yygayrSLfsuzDmi05ros6WBzyBAFICu5ZYv78QyMGu', '2022-02-15 00:00:00', '2022-02-15 00:00:00', 'What is your mother''s maiden name?', 'IVANOVA', true, true, '500e4567-e89b-20d3-a456-600614174002', true, '372c0f39-4a15-465f-b91f-c77f31ed2b92', false),
       ('375331001013', '5066818E452BP7', '$2a$10$SDlcrj6PhK0yygayrSLfsuzDmi05ros6WBzyBAFICu5ZYv78QyMGu', '2022-02-15 00:00:00', '2022-02-15 00:00:00', 'What is your mother''s maiden name?', 'PETROVA', true, true, '500e4567-e89b-20d3-a456-600614174003', true, '63c4adbe-f7e4-441c-8b74-3437457428b5', false),
       ('375331001014', '4167828E453BP2', '$2a$10$SDlcrj6PhK0yygayrSLfsuzDmi05ros6WBzyBAFICu5ZYv78QyMGu', '2022-02-15 00:00:00', '2022-02-15 00:00:00', 'What is your mother''s maiden name?', 'SIDOROVA', true, true, '500e4567-e89b-20d3-a456-600614174004', true, '2454b214-355f-4aff-b6e4-6956efa32454', true),
       ('375331001015', '4268838E454BP4', '$2a$10$SDlcrj6PhK0yygayrSLfsuzDmi05ros6WBzyBAFICu5ZYv78QyMGu', '2022-02-15 00:00:00', '2022-02-15 00:00:00', 'What is your mother''s maiden name?', 'KOZLOVA', true, true, '500e4567-e89b-20d3-a456-600614174005', true, '33401ad2-fabd-445f-a26d-1ee49be8693d', false),
       ('375331001016', '4969848E465BP9', '$2a$10$SDlcrj6PhK0yygayrSLfsuzDmi05ros6WBzyBAFICu5ZYv78QyMGu', '2022-02-15 00:00:00', '2022-02-15 00:00:00', 'What is your mother''s maiden name?', 'STEPANOVA', true, true, '500e4567-e89b-20d3-a456-600614174006', true, 'b592fd57-fb80-4f2a-bcad-f69dca48bd55', true),
       ('375331001017', '4965851E456BP1', '$2a$10$SDlcrj6PhK0yygayrSLfsuzDmi05ros6WBzyBAFICu5ZYv78QyMGu', '2022-02-15 00:00:00', '2022-02-15 00:00:00', 'What is your mother''s maiden name?', 'IVANOVA', true, true, '500e4567-e89b-20d3-a456-600614174007', true, '679cae0c-ae1a-4a7e-8fe6-ff949f2133bf', false),
       ('375331001018', '4865818E452BP1', '$2a$10$SDlcrj6PhK0yygayrSLfsuzDmi05ros6WBzyBAFICu5ZYv78QyMGu', '2022-02-15 00:00:00', '2022-02-15 00:00:00', 'What is your mother''s maiden name?', 'IVANOVA', true, true, '500e4567-e89b-20d3-a456-600614174008', true, 'fa6e273f-131d-440d-a729-f3580ee8df8d', true),
       ('375331001019', '4915998E452BP4', '$2a$10$SDlcrj6PhK0yygayrSLfsuzDmi05ros6WBzyBAFICu5ZYv78QyMGu', '2022-02-15 00:00:00', '2022-02-15 00:00:00', 'What is your mother''s maiden name?', 'IVANOVA', true, true, '500e4567-e89b-20d3-a456-600614174009', true, '2c8e5664-f794-402f-b47f-dce4e8c077fe', false);
       
COMMIT TRANSACTION;

BEGIN TRANSACTION;

INSERT INTO api_user_contact (email, skype, user_id, phone_number)
VALUES ('some_domen1@mail.com', 'testSkype', '500e4567-e89b-20d3-a456-600614174000', '375331001010'),
       ('some_domen2@mail.com', 'testSkype', '500e4567-e89b-20d3-a456-600614174001', '375331001011'),
       ('some_domen3@mail.com', 'testSkype', '500e4567-e89b-20d3-a456-600614174002', '375331001012'),
       ('test1@mail.com', 'testSkype', '500e4567-e89b-20d3-a456-600614174003', '375331001013'),
       ('test2@mail.com', 'testSkype', '500e4567-e89b-20d3-a456-600614174004', '375331001014'),
       ('test3@mail.com', 'testSkype', '500e4567-e89b-20d3-a456-600614174005', '375331001015'),
       ('test4@mail.com', 'testSkype', '500e4567-e89b-20d3-a456-600614174006', '375331001016'),
       ('test5@mail.com', 'testSkype', '500e4567-e89b-20d3-a456-600614174007', '375331001017'),
       ('test6@mail.com', 'testSkype', '500e4567-e89b-20d3-a456-600614174008', '375331001018'),
       ('test7@mail.com', 'testSkype', '500e4567-e89b-20d3-a456-600614174009', '375331001019');
COMMIT TRANSACTION;

