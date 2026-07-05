-- @operation: export
-- @entity: batch
-- @name: Added Custom Formats
-- @exportedAt: 2026-05-18T21:38:26.654Z
-- @opIds: 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308

-- --- BEGIN op 195 ( create custom_format "3D" )
insert into "custom_formats" ("name", "description") values ('3D', '');
-- --- END op 195

-- --- BEGIN op 196 ( update custom_format "3D" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('3D', '3D Title', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('3D', '3D Title', '3D Title');
-- --- END op 196

-- --- BEGIN op 197 ( update custom_format "3D" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('3D', 'BD3D', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('3D', 'BD3D', 'BD3D');
-- --- END op 197

-- --- BEGIN op 198 ( update custom_format "3D" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('3D', 'BluRay3D', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('3D', 'BluRay3D', 'BluRay3D');
-- --- END op 198

-- --- BEGIN op 199 ( create custom_format "Bad x265 (HD)" )
insert into "custom_formats" ("name", "description") values ('Bad x265 (HD)', '');
-- --- END op 199

-- --- BEGIN op 200 ( update custom_format "Bad x265 (HD)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad x265 (HD)', 'x265', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad x265 (HD)', 'x265', 'x265');
-- --- END op 200

-- --- BEGIN op 201 ( update custom_format "Bad x265 (HD)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad x265 (HD)', 'Not 2160p', 'resolution', 'all', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Bad x265 (HD)', 'Not 2160p', '2160p');
-- --- END op 201

-- --- BEGIN op 202 ( update custom_format "Bad x265 (HD)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad x265 (HD)', 'Not FR Light HD Teams', 'release_group', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad x265 (HD)', 'Not FR Light HD Teams', 'FR HD Light Teams');
-- --- END op 202

-- --- BEGIN op 203 ( create custom_format "FR HD Light Tier" )
insert into "custom_formats" ("name", "description") values ('FR HD Light Tier', '');
-- --- END op 203

-- --- BEGIN op 204 ( update custom_format "FR HD Light Tier" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Light Tier', 'FR HD Light Teams', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Light Tier', 'FR HD Light Teams', 'FR HD Light Teams');
-- --- END op 204

-- --- BEGIN op 205 ( create custom_format "FR LQ" )
insert into "custom_formats" ("name", "description") values ('FR LQ', '');
-- --- END op 205

-- --- BEGIN op 206 ( update custom_format "FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR LQ', 'FR LQ Teams', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR LQ', 'FR LQ Teams', 'FR LQ Teams');
-- --- END op 206

-- --- BEGIN op 207 ( create custom_format "MULTi Audio" )
insert into "custom_formats" ("name", "description") values ('MULTi Audio', '');
-- --- END op 207

-- --- BEGIN op 208 ( update custom_format "MULTi Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MULTi Audio', 'MULTi Audio', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MULTi Audio', 'MULTi Audio', 'MULTi Audio');
-- --- END op 208

-- --- BEGIN op 254 ( create custom_format "SDR" )
insert into "custom_formats" ("name", "description") values ('SDR', '');
-- --- END op 254

-- --- BEGIN op 255 ( update custom_format "SDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SDR', '2160p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('SDR', '2160p', '2160p');
-- --- END op 255

-- --- BEGIN op 256 ( update custom_format "SDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SDR', 'SDR', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SDR', 'SDR', 'SDR');
-- --- END op 256

-- --- BEGIN op 257 ( create custom_format "SONARR - FR Anime FanSub" )
insert into "custom_formats" ("name", "description") values ('SONARR - FR Anime FanSub', '');
-- --- END op 257

-- --- BEGIN op 258 ( update custom_format "SONARR - FR Anime FanSub" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR Anime FanSub', ' FR Anime FanSub Teams', 'release_group', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR Anime FanSub', ' FR Anime FanSub Teams', 'SONARR - FR Anime FanSub Teams');
-- --- END op 258

-- --- BEGIN op 295 ( create custom_format "VF2-VFI" )
insert into "custom_formats" ("name", "description") values ('VF2-VFI', '');
-- --- END op 295

-- --- BEGIN op 296 ( update custom_format "VF2-VFI" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VF2-VFI', 'VF2-VFI', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VF2-VFI', 'VF2-VFI', 'VF2-VFI');
-- --- END op 296

-- --- BEGIN op 297 ( create custom_format "VFF (no VFQ)" )
insert into "custom_formats" ("name", "description") values ('VFF (no VFQ)', '');
-- --- END op 297

-- --- BEGIN op 298 ( update custom_format "VFF (no VFQ)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VFF (no VFQ)', 'VFF', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VFF (no VFQ)', 'VFF', 'VFF');
-- --- END op 298

-- --- BEGIN op 299 ( update custom_format "VFF (no VFQ)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VFF (no VFQ)', 'VFQ', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VFF (no VFQ)', 'VFQ', 'VFQ');
-- --- END op 299

-- --- BEGIN op 300 ( create custom_format "VFQ (No VFF)" )
insert into "custom_formats" ("name", "description") values ('VFQ (No VFF)', '');
-- --- END op 300

-- --- BEGIN op 301 ( update custom_format "VFQ (No VFF)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VFQ (No VFF)', 'VFF', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VFQ (No VFF)', 'VFF', 'VFF');
-- --- END op 301

-- --- BEGIN op 302 ( update custom_format "VFQ (No VFF)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VFQ (No VFF)', 'VFQ', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VFQ (No VFF)', 'VFQ', 'VFQ');
-- --- END op 302

-- --- BEGIN op 303 ( create custom_format "VOSTEN" )
insert into "custom_formats" ("name", "description") values ('VOSTEN', '');
-- --- END op 303

-- --- BEGIN op 304 ( update custom_format "VOSTEN" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VOSTEN', 'VOSTEN', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VOSTEN', 'VOSTEN', 'VOSTEN Teams');
-- --- END op 304

-- --- BEGIN op 305 ( create custom_format "VOSTFR" )
insert into "custom_formats" ("name", "description") values ('VOSTFR', '');
-- --- END op 305

-- --- BEGIN op 306 ( update custom_format "VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VOSTFR', 'VOSTFR', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VOSTFR', 'VOSTFR', 'VOSTFR');
-- --- END op 306

