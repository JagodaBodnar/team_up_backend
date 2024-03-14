/* ------- USERS ------- */

insert into tu_user values ('f46c629a-1f2a-47d4-b0a7-1a31f42260f8', 'alva.andreas@gmail.com', 'Alva Andreas') ON CONFLICT (id) do nothing;
insert into tu_user values ('f5525b2c-bcf3-44f6-86e6-4991459fed19', 'elis.viking@gmail.com', 'Elis Viking') ON CONFLICT (id) do nothing;
insert into tu_user values ('a1594f9d-4c8f-4ad3-ad2a-7af936607d7b', 'ronja.kerstin@gmail.com', 'Ronja Kerstin') ON CONFLICT (id) do nothing;
insert into tu_user values ('28f62cc9-6542-4a8f-97f9-1709c8cd3fdd', 'edith.torborg@gmail.com', 'Edith Torborg') ON CONFLICT (id) do nothing;
insert into tu_user values ('09cb55a6-538b-4fdc-bab5-bcab9d473e10', 'sven.vidar@gmail.com', 'Sven Vidar') ON CONFLICT (id) do nothing;
insert into tu_user values ('24fa0e08-bcf4-43d1-9f61-fa3a45e2689a', 'folke.klas@gmail.com', 'Folke Klas') ON CONFLICT (id) do nothing;
insert into tu_user values ('d29bc9c3-d1bb-4766-8315-0745179b9d8d', 'jagoda.bodnar@gmail.com', 'Jagoda Bodnar') ON CONFLICT (id) do nothing;
insert into tu_user values ('944796ff-5b60-455c-9254-8f5d63926b99', 'larisa.chen@gmail.com', 'Larissa Chen') ON CONFLICT (id) do nothing;
insert into tu_user values ('eac0af15-1fcb-4277-9c5a-264151184ec3', 'marie.morris@gmail.com', 'Marie Morris') ON CONFLICT (id) do nothing;
insert into tu_user values ('7d266c7a-b1a0-46b6-90ce-19fb28a34fea', 'kyla.bowman@gmail.com', 'Kyla Bowman') ON CONFLICT (id) do nothing;
insert into tu_user values ('fc505b76-7651-4938-a7cd-5a26751b3fc7', 'bruno.rollins@gmail.com', 'Bruno Rollins') ON CONFLICT (id) do nothing;
insert into tu_user values ('14dd9aae-52f2-4f49-9fe0-dc3b4215ddc6', 'kenneth.barr@gmail.com', 'Kenneth Barr') ON CONFLICT (id) do nothing;
insert into tu_user values ('d6913817-2a3a-4ee3-8bcc-3efcb42ddf1c', 'mariam.mosley@gmail.com', 'Mariam Mosley') ON CONFLICT (id) do nothing;
insert into tu_user values ('30c9cf51-2153-47c1-9ba4-cb786b3b18e5', 'benedict.roberts@gmail.com', 'Benedict Roberts') ON CONFLICT (id) do nothing;
insert into tu_user values ('5c0c1a6c-9a06-4950-b417-7b894bf8ebb1', 'nicole.harvey@gmail.com', 'Nicole Harvey') ON CONFLICT (id) do nothing;
insert into tu_user values ('940a912a-1175-4b75-8b3c-82d78faa18ba', 'elissa.reilly@gmail.com', 'Elissa Reilly') ON CONFLICT (id) do nothing;
insert into tu_user values ('6c1d1e1a-b5ad-4041-988a-5aa9b73cd2b3', 'ifan.acevedo@gmail.com', 'Ifan Acevedo') ON CONFLICT (id) do nothing;
insert into tu_user values ('abe23558-df7a-4d79-bc05-f76f103b2c64', 'erika.yang@gmail.com', 'Erika Yang') ON CONFLICT (id) do nothing;
insert into tu_user values ('0fdd679b-3d1b-4169-9a2f-3f251b998e7f', 'earl.lloyd@gmail.com', 'Earl Lloyd') ON CONFLICT (id) do nothing;
insert into tu_user values ('51c0e29f-676c-4f41-be44-2fe687478e56', 'zaara.gross@gmail.com', 'Zaara Gross') ON CONFLICT (id) do nothing;


/* ------- TEAMS ------- */


insert into tu_team values ('e38b9008-3168-4ef7-b511-a6d30dbf2869', 'Volleyball', '51c0e29f-676c-4f41-be44-2fe687478e56', '01/04/2024 17:00', 'Stockholm Sport Center', 12) ON CONFLICT (id) do nothing;
insert into tu_team values ('68dc13a2-881a-4309-bd32-b3a6483ee4b8', 'Squash', '95b45ea8-8dd9-49c0-91f3-ccb0b912d12a', '04/04/2024 19:00', 'Uppsala Sport Center', 4) ON CONFLICT (id) do nothing;
insert into tu_team values ('5abc2829-0763-4be6-bd77-46d71fb5db45', 'Volleyball', 'abe23558-df7a-4d79-bc05-f76f103b2c64', '07/04/2024 20:00', 'Stockholm Sport Center', 12) ON CONFLICT (id) do nothing;
insert into tu_team values ('9458f6a6-27df-4e9c-ba9e-e88fab8190dc', 'Basketball', '14dd9aae-52f2-4f49-9fe0-dc3b4215ddc6', '08/04/2024 21:00', 'Uppsala Sport Center', 10) ON CONFLICT (id) do nothing;
insert into tu_team values ('658e1c7c-5fca-429d-a6b2-61c778ad7c16', 'Floorball', '95b45ea8-8dd9-49c0-91f3-ccb0b912d12a', '08/04/2024 12:00', 'Malmö Sport Center', 8) ON CONFLICT (id) do nothing;
insert into tu_team values ('a281b5d9-bead-4bf9-809a-f2aacaba4743', 'Hokey', '95b45ea8-8dd9-49c0-91f3-ccb0b912d12a', '18/04/2024 05:00', 'Göteborg Sport Center', 10) ON CONFLICT (id) do nothing;
insert into tu_team values ('9fee616a-ad0c-4063-b605-5da6fcf7ba5e', 'Paintball', '95b45ea8-8dd9-49c0-91f3-ccb0b912d12a', '20/04/2024 22:30', 'Stockholm Sport Center', 8) ON CONFLICT (id) do nothing;
insert into tu_team values ('48cace45-22b6-4740-80d2-1960872c3456', 'Paintball', '95b45ea8-8dd9-49c0-91f3-ccb0b912d12a', '30/04/2024 19:15', 'Uppsala Sport Center', 8) ON CONFLICT (id) do nothing;
insert into tu_team values ('33e81ba9-f817-49bd-97ba-59cf6943a1ed', 'Basketball', '95b45ea8-8dd9-49c0-91f3-ccb0b912d12a', '30/04/2024 23:00', 'Malmö Sport Center', 8) ON CONFLICT (id) do nothing;
insert into tu_team values ('51dde2d5-7dc3-4723-b75b-c95c1a734fdb', 'Handball', '95b45ea8-8dd9-49c0-91f3-ccb0b912d12a', '02/05/2024 07:00', 'Göteborg Sport Center', 10) ON CONFLICT (id) do nothing;
insert into tu_team values ('8866ead9-259b-4dcf-85ac-bfe9d5f1e6a6', 'Football', '95b45ea8-8dd9-49c0-91f3-ccb0b912d12a', '03/05/2024 08:00', 'Uppsala Sport Center', 11) ON CONFLICT (id) do nothing;
insert into tu_team values ('01a8a648-2346-4cb0-88c3-4f6020f31e7c', 'Volleyball', 'd29bc9c3-d1bb-4766-8315-0745179b9d8d', '06/06/2024 10:00', 'Stockholm Sport Center', 12) ON CONFLICT (id) do nothing;
insert into tu_team values ('e9bbcb5e-3ef7-4d9e-92da-0887a8ad657d', 'Floorball', '95b45ea8-8dd9-49c0-91f3-ccb0b912d12a', '08/06/2024 12:00', 'Stockholm Sport Center', 8) ON CONFLICT (id) do nothing;



delete from tu_team_user_list;

/* ------- TEAM ONE ------- */

insert into tu_team_user_list values ('e38b9008-3168-4ef7-b511-a6d30dbf2869', '24fa0e08-bcf4-43d1-9f61-fa3a45e2689a');
insert into tu_team_user_list values ('e38b9008-3168-4ef7-b511-a6d30dbf2869', '09cb55a6-538b-4fdc-bab5-bcab9d473e10');
insert into tu_team_user_list values ('e38b9008-3168-4ef7-b511-a6d30dbf2869', '28f62cc9-6542-4a8f-97f9-1709c8cd3fdd');
insert into tu_team_user_list values ('e38b9008-3168-4ef7-b511-a6d30dbf2869', 'a1594f9d-4c8f-4ad3-ad2a-7af936607d7b');
insert into tu_team_user_list values ('e38b9008-3168-4ef7-b511-a6d30dbf2869', '940a912a-1175-4b75-8b3c-82d78faa18ba');

/* ------- TEAM TWO ------- */

insert into tu_team_user_list values ('68dc13a2-881a-4309-bd32-b3a6483ee4b8', '24fa0e08-bcf4-43d1-9f61-fa3a45e2689a');
insert into tu_team_user_list values ('68dc13a2-881a-4309-bd32-b3a6483ee4b8', '7d266c7a-b1a0-46b6-90ce-19fb28a34fea');
insert into tu_team_user_list values ('68dc13a2-881a-4309-bd32-b3a6483ee4b8', '6c1d1e1a-b5ad-4041-988a-5aa9b73cd2b3');

/* ------- TEAM THREE ------- */

insert into tu_team_user_list values ('5abc2829-0763-4be6-bd77-46d71fb5db45', '940a912a-1175-4b75-8b3c-82d78faa18ba');
insert into tu_team_user_list values ('5abc2829-0763-4be6-bd77-46d71fb5db45', '6c1d1e1a-b5ad-4041-988a-5aa9b73cd2b3');
insert into tu_team_user_list values ('5abc2829-0763-4be6-bd77-46d71fb5db45', '24fa0e08-bcf4-43d1-9f61-fa3a45e2689a');
insert into tu_team_user_list values ('5abc2829-0763-4be6-bd77-46d71fb5db45', 'a1594f9d-4c8f-4ad3-ad2a-7af936607d7b');
insert into tu_team_user_list values ('5abc2829-0763-4be6-bd77-46d71fb5db45', 'd6913817-2a3a-4ee3-8bcc-3efcb42ddf1c');
insert into tu_team_user_list values ('5abc2829-0763-4be6-bd77-46d71fb5db45', '30c9cf51-2153-47c1-9ba4-cb786b3b18e5');
insert into tu_team_user_list values ('5abc2829-0763-4be6-bd77-46d71fb5db45', 'eac0af15-1fcb-4277-9c5a-264151184ec3');

/* ------- TEAM FOUR ------- */

insert into tu_team_user_list values ('9458f6a6-27df-4e9c-ba9e-e88fab8190dc', '940a912a-1175-4b75-8b3c-82d78faa18ba');
insert into tu_team_user_list values ('9458f6a6-27df-4e9c-ba9e-e88fab8190dc', '6c1d1e1a-b5ad-4041-988a-5aa9b73cd2b3');
insert into tu_team_user_list values ('9458f6a6-27df-4e9c-ba9e-e88fab8190dc', '24fa0e08-bcf4-43d1-9f61-fa3a45e2689a');
insert into tu_team_user_list values ('9458f6a6-27df-4e9c-ba9e-e88fab8190dc', '14dd9aae-52f2-4f49-9fe0-dc3b4215ddc6');
insert into tu_team_user_list values ('9458f6a6-27df-4e9c-ba9e-e88fab8190dc', 'd6913817-2a3a-4ee3-8bcc-3efcb42ddf1c');
insert into tu_team_user_list values ('9458f6a6-27df-4e9c-ba9e-e88fab8190dc', '30c9cf51-2153-47c1-9ba4-cb786b3b18e5');
insert into tu_team_user_list values ('9458f6a6-27df-4e9c-ba9e-e88fab8190dc', 'eac0af15-1fcb-4277-9c5a-264151184ec3');


/* ------- TEAM FIVE ------- */

insert into tu_team_user_list values ('658e1c7c-5fca-429d-a6b2-61c778ad7c16', '24fa0e08-bcf4-43d1-9f61-fa3a45e2689a');
insert into tu_team_user_list values ('658e1c7c-5fca-429d-a6b2-61c778ad7c16', '6c1d1e1a-b5ad-4041-988a-5aa9b73cd2b3');
insert into tu_team_user_list values ('658e1c7c-5fca-429d-a6b2-61c778ad7c16', 'a1594f9d-4c8f-4ad3-ad2a-7af936607d7b');
insert into tu_team_user_list values ('658e1c7c-5fca-429d-a6b2-61c778ad7c16', '14dd9aae-52f2-4f49-9fe0-dc3b4215ddc6');
insert into tu_team_user_list values ('658e1c7c-5fca-429d-a6b2-61c778ad7c16', 'd6913817-2a3a-4ee3-8bcc-3efcb42ddf1c');

/* ------- TEAM SIX ------- */

insert into tu_team_user_list values ('a281b5d9-bead-4bf9-809a-f2aacaba4743', '940a912a-1175-4b75-8b3c-82d78faa18ba');
insert into tu_team_user_list values ('a281b5d9-bead-4bf9-809a-f2aacaba4743', '6c1d1e1a-b5ad-4041-988a-5aa9b73cd2b3');
insert into tu_team_user_list values ('a281b5d9-bead-4bf9-809a-f2aacaba4743', 'd29bc9c3-d1bb-4766-8315-0745179b9d8d');
insert into tu_team_user_list values ('a281b5d9-bead-4bf9-809a-f2aacaba4743', '14dd9aae-52f2-4f49-9fe0-dc3b4215ddc6');

/* ------- TEAM SEVEN ------- */

insert into tu_team_user_list values ('9fee616a-ad0c-4063-b605-5da6fcf7ba5e', 'd6913817-2a3a-4ee3-8bcc-3efcb42ddf1c');
insert into tu_team_user_list values ('9fee616a-ad0c-4063-b605-5da6fcf7ba5e', '6c1d1e1a-b5ad-4041-988a-5aa9b73cd2b3');
insert into tu_team_user_list values ('9fee616a-ad0c-4063-b605-5da6fcf7ba5e', 'd29bc9c3-d1bb-4766-8315-0745179b9d8d');
insert into tu_team_user_list values ('9fee616a-ad0c-4063-b605-5da6fcf7ba5e', '14dd9aae-52f2-4f49-9fe0-dc3b4215ddc6');

/* ------- TEAM EIGHT ------- */

insert into tu_team_user_list values ('48cace45-22b6-4740-80d2-1960872c3456', '51c0e29f-676c-4f41-be44-2fe687478e56');
insert into tu_team_user_list values ('48cace45-22b6-4740-80d2-1960872c3456', '6c1d1e1a-b5ad-4041-988a-5aa9b73cd2b3');
insert into tu_team_user_list values ('48cace45-22b6-4740-80d2-1960872c3456', '14dd9aae-52f2-4f49-9fe0-dc3b4215ddc6');
insert into tu_team_user_list values ('48cace45-22b6-4740-80d2-1960872c3456', '944796ff-5b60-455c-9254-8f5d63926b99');
insert into tu_team_user_list values ('48cace45-22b6-4740-80d2-1960872c3456', 'f5525b2c-bcf3-44f6-86e6-4991459fed19');
insert into tu_team_user_list values ('48cace45-22b6-4740-80d2-1960872c3456', 'eac0af15-1fcb-4277-9c5a-264151184ec3');
insert into tu_team_user_list values ('48cace45-22b6-4740-80d2-1960872c3456', '7d266c7a-b1a0-46b6-90ce-19fb28a34fea');
insert into tu_team_user_list values ('48cace45-22b6-4740-80d2-1960872c3456', 'abe23558-df7a-4d79-bc05-f76f103b2c64');

/* ------- TEAM NINE ------- */

insert into tu_team_user_list values ('33e81ba9-f817-49bd-97ba-59cf6943a1ed', '51c0e29f-676c-4f41-be44-2fe687478e56');
insert into tu_team_user_list values ('33e81ba9-f817-49bd-97ba-59cf6943a1ed', 'f5525b2c-bcf3-44f6-86e6-4991459fed19');
insert into tu_team_user_list values ('33e81ba9-f817-49bd-97ba-59cf6943a1ed', 'abe23558-df7a-4d79-bc05-f76f103b2c64');

/* ------- TEAM TEN ------- */

insert into tu_team_user_list values ('51dde2d5-7dc3-4723-b75b-c95c1a734fdb', '51c0e29f-676c-4f41-be44-2fe687478e56');
insert into tu_team_user_list values ('51dde2d5-7dc3-4723-b75b-c95c1a734fdb', '7d266c7a-b1a0-46b6-90ce-19fb28a34fea');
insert into tu_team_user_list values ('51dde2d5-7dc3-4723-b75b-c95c1a734fdb', 'eac0af15-1fcb-4277-9c5a-264151184ec3');


/* ------- TEAM ELEVEN ------- */

insert into tu_team_user_list values ('8866ead9-259b-4dcf-85ac-bfe9d5f1e6a6', '24fa0e08-bcf4-43d1-9f61-fa3a45e2689a');
insert into tu_team_user_list values ('8866ead9-259b-4dcf-85ac-bfe9d5f1e6a6', 'abe23558-df7a-4d79-bc05-f76f103b2c64');
insert into tu_team_user_list values ('8866ead9-259b-4dcf-85ac-bfe9d5f1e6a6', '7d266c7a-b1a0-46b6-90ce-19fb28a34fea');
insert into tu_team_user_list values ('8866ead9-259b-4dcf-85ac-bfe9d5f1e6a6', '28f62cc9-6542-4a8f-97f9-1709c8cd3fdd');
insert into tu_team_user_list values ('8866ead9-259b-4dcf-85ac-bfe9d5f1e6a6', 'a1594f9d-4c8f-4ad3-ad2a-7af936607d7b');

/* ------- TEAM TWELVE ------- */

insert into tu_team_user_list values ('01a8a648-2346-4cb0-88c3-4f6020f31e7c', 'f46c629a-1f2a-47d4-b0a7-1a31f42260f8');
insert into tu_team_user_list values ('01a8a648-2346-4cb0-88c3-4f6020f31e7c', 'f5525b2c-bcf3-44f6-86e6-4991459fed19');
insert into tu_team_user_list values ('01a8a648-2346-4cb0-88c3-4f6020f31e7c', '7d266c7a-b1a0-46b6-90ce-19fb28a34fea');
insert into tu_team_user_list values ('01a8a648-2346-4cb0-88c3-4f6020f31e7c', '14dd9aae-52f2-4f49-9fe0-dc3b4215ddc6');
insert into tu_team_user_list values ('01a8a648-2346-4cb0-88c3-4f6020f31e7c', '940a912a-1175-4b75-8b3c-82d78faa18ba');
insert into tu_team_user_list values ('01a8a648-2346-4cb0-88c3-4f6020f31e7c', 'd6913817-2a3a-4ee3-8bcc-3efcb42ddf1c');

/* ------- TEAM THIRTEEN ------- */

insert into tu_team_user_list values ('e9bbcb5e-3ef7-4d9e-92da-0887a8ad657d', 'abe23558-df7a-4d79-bc05-f76f103b2c64');
insert into tu_team_user_list values ('e9bbcb5e-3ef7-4d9e-92da-0887a8ad657d', 'f5525b2c-bcf3-44f6-86e6-4991459fed19');


