-- @operation: export
-- @entity: batch
-- @name: Add Regex
-- @exportedAt: 2026-05-18T21:13:14.698Z
-- @opIds: 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193

-- --- BEGIN op 158 ( create regular_expression "3D Title" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('3D Title', '\b(?<=\b[12]\d{3}\b).*\b(3d|sbs|half[ .-]ou|half[ .-]sbs)\b', NULL, NULL);
-- --- END op 158

-- --- BEGIN op 159 ( create regular_expression "BD3D" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BD3D', '\b(BD3D)\b', NULL, NULL);
-- --- END op 159

-- --- BEGIN op 160 ( create regular_expression "BluRay3D" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BluRay3D', '\b(BluRay3D)\b', NULL, NULL);
-- --- END op 160

-- --- BEGIN op 161 ( create regular_expression "FR HD Light Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FR HD Light Teams', '\b(PopHD|AW|GHT|PATOMiEL|QTZ|SANTACRUZ|Xantar|RiFiFi|PiXEL|Winks|mHDgz)\b', 'Matches "<group>" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FR HD Light Teams', 'Release Group');
-- --- END op 161

-- --- BEGIN op 162 ( create regular_expression "FR LQ Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FR LQ Teams', '\b(Bandix|CZ\d+|EXTREME|GA(Ï|I)A|HMiDiMADRiDi|Hush|KILLERMIX|LiBERTAD|LTa?TM|MONiCO|NEWCINE|R(PZ|ZP)|ShowFR|VERCLAM|ViKi47|Wawa-(city|mania|porno)?|ZW|ACOOL|AlioZ|ASPHiXiAS|AViTECH|AZAZE|Balibalo|BLABLASTREAM|DDLFRENCH(ORG)?|FERVEX|FReeZeR|GHOSTSPiRiT|GHZ|GLaDOS|GZR|HEVCBay|JiHeff|KR4K3N|Matmatha|MKVXTEAM|Monchat|NLX5|NOMAD|NORRIS|PiCKLES|PREUMS|qctimb3rlandqc|ReBoT|ROLLED|SCREEN|SHiFT|SKRiN|TicaDow|Tokushi|Tonyk|TOXIC|TUTUTE|UNiKORN|Zombie|Cpasbien|CPB|ANONA|AT|bigZT|Boheme|BOL|CINeHD|Cortex91|DOLL4R|Dread[ .-]?Team|Dropse|EZTV([ ._-]re)?|FGT|Firetown|FUN|HDMIDIMADRIDI|JetAnime|L-?O-?L|NewZT|NG|RARBG|STVFRV|SubZero|T9|Time2Watch|TIREXO|Torrent9|WebAnime|YIFY|YTS|ZONE|ZT|AKLHD|ARKRiL|BossBaby|Champion9|Copycomic|CR4ZYTiME|EASPORTS|EliteT|FUNKKY|FZTeam|GOBO2S|HD2|LION|LMPS|LNA3d|MACK4|MeMyl|METALLIKA|MGD|Moorea81|Moviz|Muxman|Mystic|MZC|MZi?SYS|N3TFL1X|NoelMaison|nutella|OMERTA|Papaya|PIKACHU|PULSE|Q7|RELiC|SANCTUAIRE|SHARKS|SP3CTR|Spow|STR4NGE|TeamSuW|TORRiD|TSN999|TVPSLO|Upmix|VATFER|Wakanim|WaNeZt|WINCHESTER|WITA)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FR LQ Teams', 'Release Group');
-- --- END op 162

-- --- BEGIN op 163 ( update regular_expression "FR HD Light Teams" )
update "regular_expressions" set "description" = NULL where "name" = 'FR HD Light Teams' and "description" = 'Matches "<group>" when preceded by whitespace, a hyphen or dot';
-- --- END op 163

-- --- BEGIN op 164 ( create regular_expression "MULTi Audio" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MULTi Audio', '\b(?:MULTi(?![ .-]subs?)|(?=.*\b(?:VFF|VFI|VF2|TRUE\s?FRENCH)\b)(?=.*\bVO\b))\b', NULL, NULL);
-- --- END op 164

-- --- BEGIN op 174 ( create regular_expression "SDR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SDR', '\bSDR\b', NULL, NULL);
-- --- END op 174

-- --- BEGIN op 186 ( create regular_expression "VF2-VFI" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VF2-VFI', '\b(VFI|VF2)\b', NULL, NULL);
-- --- END op 186

-- --- BEGIN op 187 ( create regular_expression "VFF" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VFF', '\b(VFF|VOF|TRUEFRENCH)\b', NULL, NULL);
-- --- END op 187

-- --- BEGIN op 188 ( create regular_expression "VFQ" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VFQ', '\b(VQ|VFQ)\b', NULL, NULL);
-- --- END op 188

-- --- BEGIN op 190 ( create regular_expression "VOSTFR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VOSTFR', '\b(VOSTFR|SUBFRENCH)\b', NULL, NULL);
-- --- END op 190

-- --- BEGIN op 191 ( create regular_expression "x265" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('x265', '[xh][ ._-]?265|\bHEVC(\b|\d)', NULL, NULL);
-- --- END op 191

-- --- BEGIN op 192 ( update regular_expression "FR LQ Teams" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FR LQ Teams' AND tag_name = 'Release Group';
-- --- END op 192

-- --- BEGIN op 193 ( update regular_expression "FR HD Light Teams" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'FR HD Light Teams' AND tag_name = 'Release Group';
-- --- END op 193
