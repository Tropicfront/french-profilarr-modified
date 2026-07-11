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

-- --- BEGIN op 209 ( create custom_format "RADARR - FR HD Bluray Tier 01" )
insert into "custom_formats" ("name", "description") values ('RADARR - FR HD Bluray Tier 01', '');
-- --- END op 209

-- --- BEGIN op 210 ( update custom_format "RADARR - FR HD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR HD Bluray Tier 01', 'RADARR - FR HD Bluray Tier 01', 'release_group', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RADARR - FR HD Bluray Tier 01', 'RADARR - FR HD Bluray Tier 01', 'RADARR - FR HD Bluray Tier 01 Teams');
-- --- END op 210

-- --- BEGIN op 211 ( update custom_format "RADARR - FR HD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR HD Bluray Tier 01', 'Bluray Source', 'source', 'radarr', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('RADARR - FR HD Bluray Tier 01', 'Bluray Source', 'bluray');
-- --- END op 211

-- --- BEGIN op 212 ( update custom_format "RADARR - FR HD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR HD Bluray Tier 01', 'Not 2160p', 'resolution', 'radarr', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('RADARR - FR HD Bluray Tier 01', 'Not 2160p', '2160p');
-- --- END op 212

-- --- BEGIN op 213 ( update custom_format "RADARR - FR HD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR HD Bluray Tier 01', 'Not Remux', 'quality_modifier', 'radarr', 1, 1);

INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('RADARR - FR HD Bluray Tier 01', 'Not Remux', 'remux');
-- --- END op 213

-- --- BEGIN op 214 ( create custom_format "RADARR - FR HD Bluray Tier 02" )
insert into "custom_formats" ("name", "description") values ('RADARR - FR HD Bluray Tier 02', '');
-- --- END op 214

-- --- BEGIN op 215 ( update custom_format "RADARR - FR HD Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR HD Bluray Tier 02', 'Bluray Source', 'source', 'radarr', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('RADARR - FR HD Bluray Tier 02', 'Bluray Source', 'bluray');
-- --- END op 215

-- --- BEGIN op 216 ( update custom_format "RADARR - FR HD Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR HD Bluray Tier 02', 'FR HD Bluray Tier 02 Teams', 'release_group', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RADARR - FR HD Bluray Tier 02', 'FR HD Bluray Tier 02 Teams', 'RADARR - FR HD Bluray Tier 02 Teams');
-- --- END op 216

-- --- BEGIN op 217 ( update custom_format "RADARR - FR HD Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR HD Bluray Tier 02', 'Not 2160p', 'resolution', 'radarr', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('RADARR - FR HD Bluray Tier 02', 'Not 2160p', '2160p');
-- --- END op 217

-- --- BEGIN op 218 ( update custom_format "RADARR - FR HD Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR HD Bluray Tier 02', 'Not Remux', 'quality_modifier', 'radarr', 1, 1);

INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('RADARR - FR HD Bluray Tier 02', 'Not Remux', 'remux');
-- --- END op 218

-- --- BEGIN op 219 ( create custom_format "RADARR - FR Remux Tier 01" )
insert into "custom_formats" ("name", "description") values ('RADARR - FR Remux Tier 01', '');
-- --- END op 219

-- --- BEGIN op 220 ( update custom_format "RADARR - FR Remux Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR Remux Tier 01', 'REMUX', 'quality_modifier', 'radarr', 0, 1);

INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('RADARR - FR Remux Tier 01', 'REMUX', 'remux');
-- --- END op 220

-- --- BEGIN op 221 ( update custom_format "RADARR - FR Remux Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR Remux Tier 01', 'FR Remux Tier 01 Teams', 'release_group', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RADARR - FR Remux Tier 01', 'FR Remux Tier 01 Teams', 'RADARR - FR Remux Tier 01 Teams');
-- --- END op 221

-- --- BEGIN op 222 ( create custom_format "RADARR - FR Remux Tier 02" )
insert into "custom_formats" ("name", "description") values ('RADARR - FR Remux Tier 02', '');
-- --- END op 222

-- --- BEGIN op 223 ( update custom_format "RADARR - FR Remux Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR Remux Tier 02', 'RADARR - FR Remux Tier 02', 'release_group', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RADARR - FR Remux Tier 02', 'RADARR - FR Remux Tier 02', 'RADARR - FR Remux Tier 02 Teams');
-- --- END op 223

-- --- BEGIN op 224 ( update custom_format "RADARR - FR Remux Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR Remux Tier 02', 'REMUX', 'quality_modifier', 'radarr', 0, 1);

INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('RADARR - FR Remux Tier 02', 'REMUX', 'remux');
-- --- END op 224

-- --- BEGIN op 225 ( create custom_format "RADARR - FR Scene Teams" )
insert into "custom_formats" ("name", "description") values ('RADARR - FR Scene Teams', '');
-- --- END op 225

-- --- BEGIN op 226 ( update custom_format "RADARR - FR Scene Teams" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR Scene Teams', 'New Condition', 'release_group', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RADARR - FR Scene Teams', 'New Condition', 'RADARR - FR Scene Teams');
-- --- END op 226

-- --- BEGIN op 227 ( create custom_format "RADARR - FR UHD Bluray Tier 01" )
insert into "custom_formats" ("name", "description") values ('RADARR - FR UHD Bluray Tier 01', '');
-- --- END op 227

-- --- BEGIN op 228 ( update custom_format "RADARR - FR UHD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR UHD Bluray Tier 01', '2160p', 'resolution', 'radarr', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('RADARR - FR UHD Bluray Tier 01', '2160p', '2160p');
-- --- END op 228

-- --- BEGIN op 229 ( update custom_format "RADARR - FR UHD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR UHD Bluray Tier 01', 'FR UHD Bluray Tier 01 Teams', 'release_group', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RADARR - FR UHD Bluray Tier 01', 'FR UHD Bluray Tier 01 Teams', 'RADARR - FR UHD Bluray Tier 01 Teams');
-- --- END op 229

-- --- BEGIN op 230 ( update custom_format "RADARR - FR UHD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR UHD Bluray Tier 01', 'Not WEB-DL', 'source', 'radarr', 1, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('RADARR - FR UHD Bluray Tier 01', 'Not WEB-DL', 'web_dl');
-- --- END op 230

-- --- BEGIN op 231 ( update custom_format "RADARR - FR UHD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR UHD Bluray Tier 01', 'Not WEBRip', 'source', 'radarr', 1, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('RADARR - FR UHD Bluray Tier 01', 'Not WEBRip', 'webrip');
-- --- END op 231

-- --- BEGIN op 232 ( update custom_format "RADARR - FR UHD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR UHD Bluray Tier 01', 'Not REMUX', 'quality_modifier', 'radarr', 1, 1);

INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('RADARR - FR UHD Bluray Tier 01', 'Not REMUX', 'remux');
-- --- END op 232

-- --- BEGIN op 233 ( update custom_format "RADARR - FR UHD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR UHD Bluray Tier 01', 'Not SDR', 'release_title', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RADARR - FR UHD Bluray Tier 01', 'Not SDR', 'SDR');
-- --- END op 233

-- --- BEGIN op 234 ( create custom_format "RADARR - FR UHD Bluray Tier 02" )
insert into "custom_formats" ("name", "description") values ('RADARR - FR UHD Bluray Tier 02', '');
-- --- END op 234

-- --- BEGIN op 235 ( update custom_format "RADARR - FR UHD Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR UHD Bluray Tier 02', '2160p', 'resolution', 'radarr', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('RADARR - FR UHD Bluray Tier 02', '2160p', '2160p');
-- --- END op 235

-- --- BEGIN op 236 ( update custom_format "RADARR - FR UHD Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR UHD Bluray Tier 02', 'FR UHD Bluray Tier 01 Teams', 'release_group', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RADARR - FR UHD Bluray Tier 02', 'FR UHD Bluray Tier 01 Teams', 'RADARR - FR UHD Bluray Tier 01 Teams');
-- --- END op 236

-- --- BEGIN op 237 ( update custom_format "RADARR - FR UHD Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR UHD Bluray Tier 02', 'Not REMUX', 'quality_modifier', 'radarr', 1, 1);

INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('RADARR - FR UHD Bluray Tier 02', 'Not REMUX', 'remux');
-- --- END op 237

-- --- BEGIN op 238 ( update custom_format "RADARR - FR UHD Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR UHD Bluray Tier 02', 'Not SDR', 'release_title', 'radarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RADARR - FR UHD Bluray Tier 02', 'Not SDR', 'SDR');
-- --- END op 238

-- --- BEGIN op 239 ( update custom_format "RADARR - FR UHD Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR UHD Bluray Tier 02', 'Not WEB-DL', 'source', 'radarr', 1, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('RADARR - FR UHD Bluray Tier 02', 'Not WEB-DL', 'web_dl');
-- --- END op 239

-- --- BEGIN op 240 ( update custom_format "RADARR - FR UHD Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR UHD Bluray Tier 02', 'Not WEBRip', 'source', 'radarr', 1, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('RADARR - FR UHD Bluray Tier 02', 'Not WEBRip', 'webrip');
-- --- END op 240

-- --- BEGIN op 241 ( update custom_format "RADARR - FR UHD Bluray Tier 02" )
DELETE FROM condition_patterns WHERE custom_format_name = 'RADARR - FR UHD Bluray Tier 02' AND condition_name = 'FR UHD Bluray Tier 01 Teams' AND regular_expression_name = 'RADARR - FR UHD Bluray Tier 01 Teams';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RADARR - FR UHD Bluray Tier 02', 'FR UHD Bluray Tier 01 Teams', 'RADARR - FR UHD Bluray Tier 02 Teams');
-- --- END op 241

-- --- BEGIN op 242 ( create custom_format "RADARR - FR WEB Tier 01" )
insert into "custom_formats" ("name", "description") values ('RADARR - FR WEB Tier 01', '');
-- --- END op 242

-- --- BEGIN op 243 ( update custom_format "RADARR - FR WEB Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR WEB Tier 01', 'FR WEB Tier 01 Teams', 'release_group', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RADARR - FR WEB Tier 01', 'FR WEB Tier 01 Teams', 'RADARR - FR WEB Tier 01 Teams');
-- --- END op 243

-- --- BEGIN op 244 ( update custom_format "RADARR - FR WEB Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR WEB Tier 01', 'WEBDL Source', 'source', 'radarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('RADARR - FR WEB Tier 01', 'WEBDL Source', 'web_dl');
-- --- END op 244

-- --- BEGIN op 245 ( update custom_format "RADARR - FR WEB Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR WEB Tier 01', 'WEBRIP Source', 'source', 'radarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('RADARR - FR WEB Tier 01', 'WEBRIP Source', 'webrip');
-- --- END op 245

-- --- BEGIN op 246 ( create custom_format "RADARR - FR WEB Tier 02" )
insert into "custom_formats" ("name", "description") values ('RADARR - FR WEB Tier 02', '');
-- --- END op 246

-- --- BEGIN op 247 ( update custom_format "RADARR - FR WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR WEB Tier 02', 'FR WEB Tier 01 Teams', 'release_group', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RADARR - FR WEB Tier 02', 'FR WEB Tier 01 Teams', 'RADARR - FR WEB Tier 01 Teams');
-- --- END op 247

-- --- BEGIN op 248 ( update custom_format "RADARR - FR WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR WEB Tier 02', 'WEBDL Source', 'source', 'radarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('RADARR - FR WEB Tier 02', 'WEBDL Source', 'web_dl');
-- --- END op 248

-- --- BEGIN op 249 ( update custom_format "RADARR - FR WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR WEB Tier 02', 'WEBRIP Source', 'source', 'radarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('RADARR - FR WEB Tier 02', 'WEBRIP Source', 'webrip');
-- --- END op 249

-- --- BEGIN op 250 ( update custom_format "RADARR - FR WEB Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'RADARR - FR WEB Tier 02'
	  AND name = 'FR WEB Tier 01 Teams'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 250

-- --- BEGIN op 251 ( update custom_format "RADARR - FR WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR WEB Tier 02', 'FR WEB Tier 02 Teams', 'release_group', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RADARR - FR WEB Tier 02', 'FR WEB Tier 02 Teams', 'RADARR - FR WEB Tier 02 Teams');
-- --- END op 251

-- --- BEGIN op 252 ( update custom_format "RADARR - FR UHD Bluray Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'RADARR - FR UHD Bluray Tier 02'
	  AND name = 'FR UHD Bluray Tier 01 Teams'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 252

-- --- BEGIN op 253 ( update custom_format "RADARR - FR UHD Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR UHD Bluray Tier 02', 'FR UHD Bluray Tier 02 Teams', 'release_group', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RADARR - FR UHD Bluray Tier 02', 'FR UHD Bluray Tier 02 Teams', 'RADARR - FR UHD Bluray Tier 02 Teams');
-- --- END op 253

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

-- --- BEGIN op 259 ( create custom_format "SONARR - FR Anime Tier 01" )
insert into "custom_formats" ("name", "description") values ('SONARR - FR Anime Tier 01', '');
-- --- END op 259

-- --- BEGIN op 260 ( update custom_format "SONARR - FR Anime Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR Anime Tier 01', 'FR Anime Tier 01 Teams', 'release_group', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR Anime Tier 01', 'FR Anime Tier 01 Teams', 'SONARR - FR Anime Tier 01 Teams');
-- --- END op 260

-- --- BEGIN op 261 ( create custom_format "SONARR - FR Anime Tier 02" )
insert into "custom_formats" ("name", "description") values ('SONARR - FR Anime Tier 02', '');
-- --- END op 261

-- --- BEGIN op 262 ( update custom_format "SONARR - FR Anime Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR Anime Tier 02', 'FR Anime Tier 01 Teams', 'release_group', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR Anime Tier 02', 'FR Anime Tier 01 Teams', 'SONARR - FR Anime Tier 01 Teams');
-- --- END op 262

-- --- BEGIN op 263 ( update custom_format "SONARR - FR Anime Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SONARR - FR Anime Tier 02'
	  AND name = 'FR Anime Tier 01 Teams'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 263

-- --- BEGIN op 264 ( update custom_format "SONARR - FR Anime Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR Anime Tier 02', 'FR Anime Tier 02 Teams', 'release_group', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR Anime Tier 02', 'FR Anime Tier 02 Teams', 'SONARR - FR Anime Tier 02 Teams');
-- --- END op 264

-- --- BEGIN op 265 ( create custom_format "SONARR - FR Anime Tier 03" )
insert into "custom_formats" ("name", "description") values ('SONARR - FR Anime Tier 03', '');
-- --- END op 265

-- --- BEGIN op 266 ( update custom_format "SONARR - FR Anime Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR Anime Tier 03', 'FR Anime Tier 02 Teams', 'release_group', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR Anime Tier 03', 'FR Anime Tier 02 Teams', 'SONARR - FR Anime Tier 02 Teams');
-- --- END op 266

-- --- BEGIN op 267 ( update custom_format "SONARR - FR Anime Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SONARR - FR Anime Tier 03'
	  AND name = 'FR Anime Tier 02 Teams'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 267

-- --- BEGIN op 268 ( update custom_format "SONARR - FR Anime Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR Anime Tier 03', 'FR Anime Tier 03 Teams', 'release_group', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR Anime Tier 03', 'FR Anime Tier 03 Teams', 'SONARR - FR Anime Tier 03 Teams');
-- --- END op 268

-- --- BEGIN op 269 ( create custom_format "SONARR - FR HD Bluray Tier 01" )
insert into "custom_formats" ("name", "description") values ('SONARR - FR HD Bluray Tier 01', '');
-- --- END op 269

-- --- BEGIN op 270 ( update custom_format "SONARR - FR HD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR HD Bluray Tier 01', 'Bluray', 'source', 'sonarr', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('SONARR - FR HD Bluray Tier 01', 'Bluray', 'bluray');
-- --- END op 270

-- --- BEGIN op 271 ( update custom_format "SONARR - FR HD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR HD Bluray Tier 01', 'FR HD Bluray Tier 01 Teams', 'release_group', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR HD Bluray Tier 01', 'FR HD Bluray Tier 01 Teams', 'SONARR - FR HD Bluray Tier 01 Teams');
-- --- END op 271

-- --- BEGIN op 272 ( update custom_format "SONARR - FR HD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR HD Bluray Tier 01', 'Not 2160p', 'resolution', 'sonarr', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('SONARR - FR HD Bluray Tier 01', 'Not 2160p', '2160p');
-- --- END op 272

-- --- BEGIN op 273 ( update custom_format "SONARR - FR HD Bluray Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR HD Bluray Tier 01', 'Not Remux', 'release_title', 'sonarr', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR HD Bluray Tier 01', 'Not Remux', 'SONARR - REMUX Title');
-- --- END op 273

-- --- BEGIN op 274 ( create custom_format "SONARR - FR Remux Tier 01" )
insert into "custom_formats" ("name", "description") values ('SONARR - FR Remux Tier 01', '');
-- --- END op 274

-- --- BEGIN op 275 ( update custom_format "SONARR - FR Remux Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR Remux Tier 01', 'REMUX', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR Remux Tier 01', 'REMUX', 'SONARR - REMUX Title');
-- --- END op 275

-- --- BEGIN op 276 ( update custom_format "SONARR - FR Remux Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR Remux Tier 01', 'SONARR - FR Remux Tier 01', 'release_group', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR Remux Tier 01', 'SONARR - FR Remux Tier 01', 'SONARR - FR Remux Tier 01 Teams');
-- --- END op 276

-- --- BEGIN op 277 ( create custom_format "SONARR - FR Scene Groups" )
insert into "custom_formats" ("name", "description") values ('SONARR - FR Scene Groups', '');
-- --- END op 277

-- --- BEGIN op 278 ( update custom_format "SONARR - FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR Scene Groups', 'FR Scene Groups Teams', 'release_group', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR Scene Groups', 'FR Scene Groups Teams', 'SONARR - FR Scene Groups Teams');
-- --- END op 278

-- --- BEGIN op 279 ( create custom_format "SONARR - FR WEB Tier 01" )
insert into "custom_formats" ("name", "description") values ('SONARR - FR WEB Tier 01', '');
-- --- END op 279

-- --- BEGIN op 280 ( update custom_format "SONARR - FR WEB Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR WEB Tier 01', 'FR WEB Tier 01 Teams', 'release_group', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR WEB Tier 01', 'FR WEB Tier 01 Teams', 'SONARR - FR WEB Tier 01 Teams');
-- --- END op 280

-- --- BEGIN op 281 ( update custom_format "SONARR - FR WEB Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR WEB Tier 01', 'WEBRip', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('SONARR - FR WEB Tier 01', 'WEBRip', 'webrip');
-- --- END op 281

-- --- BEGIN op 282 ( update custom_format "SONARR - FR WEB Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR WEB Tier 01', 'WEB-DL', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('SONARR - FR WEB Tier 01', 'WEB-DL', 'web_dl');
-- --- END op 282

-- --- BEGIN op 283 ( create custom_format "SONARR - FR WEB Tier 02" )
insert into "custom_formats" ("name", "description") values ('SONARR - FR WEB Tier 02', '');
-- --- END op 283

-- --- BEGIN op 284 ( update custom_format "SONARR - FR WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR WEB Tier 02', 'FR WEB Tier 01 Teams', 'release_group', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR WEB Tier 02', 'FR WEB Tier 01 Teams', 'SONARR - FR WEB Tier 01 Teams');
-- --- END op 284

-- --- BEGIN op 285 ( update custom_format "SONARR - FR WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR WEB Tier 02', 'WEB-DL', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('SONARR - FR WEB Tier 02', 'WEB-DL', 'web_dl');
-- --- END op 285

-- --- BEGIN op 286 ( update custom_format "SONARR - FR WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR WEB Tier 02', 'WEBRip', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('SONARR - FR WEB Tier 02', 'WEBRip', 'webrip');
-- --- END op 286

-- --- BEGIN op 287 ( update custom_format "SONARR - FR WEB Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SONARR - FR WEB Tier 02'
	  AND name = 'FR WEB Tier 01 Teams'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 287

-- --- BEGIN op 288 ( update custom_format "SONARR - FR WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR WEB Tier 02', 'FR WEB Tier 02 Teams', 'release_group', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR WEB Tier 02', 'FR WEB Tier 02 Teams', 'SONARR - FR WEB Tier 02 Teams');
-- --- END op 288

-- --- BEGIN op 289 ( create custom_format "SONARR - FR WEB Tier 03" )
insert into "custom_formats" ("name", "description") values ('SONARR - FR WEB Tier 03', '');
-- --- END op 289

-- --- BEGIN op 290 ( update custom_format "SONARR - FR WEB Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR WEB Tier 03', 'FR WEB Tier 02 Teams', 'release_group', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR WEB Tier 03', 'FR WEB Tier 02 Teams', 'SONARR - FR WEB Tier 02 Teams');
-- --- END op 290

-- --- BEGIN op 291 ( update custom_format "SONARR - FR WEB Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR WEB Tier 03', 'WEB-DL', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('SONARR - FR WEB Tier 03', 'WEB-DL', 'web_dl');
-- --- END op 291

-- --- BEGIN op 292 ( update custom_format "SONARR - FR WEB Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR WEB Tier 03', 'WEBRip', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('SONARR - FR WEB Tier 03', 'WEBRip', 'webrip');
-- --- END op 292

-- --- BEGIN op 293 ( update custom_format "SONARR - FR WEB Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SONARR - FR WEB Tier 03'
	  AND name = 'FR WEB Tier 02 Teams'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 293

-- --- BEGIN op 294 ( update custom_format "SONARR - FR WEB Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SONARR - FR WEB Tier 03', 'FR WEB Tier 03 Teams', 'release_group', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SONARR - FR WEB Tier 03', 'FR WEB Tier 03 Teams', 'SONARR - FR WEB Tier 03 Teams');
-- --- END op 294

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

-- --- BEGIN op 307 ( update custom_format "RADARR - FR Scene Teams" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'RADARR - FR Scene Teams'
	  AND name = 'New Condition'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 307

-- --- BEGIN op 308 ( update custom_format "RADARR - FR Scene Teams" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RADARR - FR Scene Teams', 'FR Scene Teams', 'release_group', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RADARR - FR Scene Teams', 'FR Scene Teams', 'RADARR - FR Scene Teams');
-- --- END op 308
