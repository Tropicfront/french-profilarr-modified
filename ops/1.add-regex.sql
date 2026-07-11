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

-- --- BEGIN op 165 ( create regular_expression "RADARR - FR HD Bluray Tier 01 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RADARR - FR HD Bluray Tier 01 Teams', '\b(BDHD|FoX|FRATERNiTY|FrIeNdS|MAX|Psaro|T3KASHi|SERQPH|YODA)\b', NULL, NULL);
-- --- END op 165

-- --- BEGIN op 166 ( create regular_expression "RADARR - FR HD Bluray Tier 02 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RADARR - FR HD Bluray Tier 02 Teams', '\b(HDForever|HeavyWeight|MARBLECAKE|MYSTERiON|NoNE|ONLY|ONLYMOViE|TkHD|UTT)\b', NULL, NULL);
-- --- END op 166

-- --- BEGIN op 167 ( create regular_expression "RADARR - FR Remux Tier 01 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RADARR - FR Remux Tier 01 Teams', '\b(BlackAngel|Choco|HDForever|MAX|ONLY|Psaro|Sicario|Tezcat74|TyrellCorp|Zapax)\b', NULL, NULL);
-- --- END op 167

-- --- BEGIN op 168 ( create regular_expression "RADARR - FR Remux Tier 02 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RADARR - FR Remux Tier 02 Teams', '\b(BDHD|FtLi|Goldenyann|HeavyWeight|KTM|MARBLECAKE|MUSTANG|Obi|PEPiTE|Q(UEBE)?C63|ROMKENT)\b', NULL, NULL);
-- --- END op 168

-- --- BEGIN op 169 ( create regular_expression "RADARR - FR Scene Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RADARR - FR Scene Teams', '\b(4FR|AiR3D|AiRDOCS|AiRFORCE|AiRLiNE|AiRTV|AKLHD|AMB3R|ANMWR|AVON|AYMO|AZR|BANKAi|BAWLS|BiPOLAR|BLACKPANTERS|BODIE|BOOLZ|BRiNK|BTT|CARAPiLS|CiELOS|CiNEMA|CMBHD|CoRa|COUAC|CRYPT0|D4KiD|DEAL|DiEBEX|DUPLI|DUSS|ENJOi|EUBDS|FHD|FiDELiO|FiDO|ForceBleue|FREAMON|FRENCHDEADPOOL2|FRiES|FUTiL|FWDHD|GHOULS|GiMBAP|GLiMMER|Goatlove|HERC|HiggsBoson|HiRoSHiMa|HYBRiS|HyDe|JMT|JoKeR|JUSTICELEAGUE|KAZETV|L0SERNiGHT|LaoZi|LeON|LOFiDEL|LOST|LOWIMDB|LYPSG|MAGiCAL|MANGACiTY|MAXAGAZ|MaxiBeNoul|McNULTY|MELBA|MiND|MORELAND|MUNSTER|MUxHD|NERDHD|NERO|NrZ|NTK|OBSTACLE|OohLaLa|OOKAMI|PANZeR|PATHECROUTE|Penrose|PiNKPANTERS|PKPTRS|PRiDEHD|PROPJOE|PURE|PUREWASTEOFBW|ROUGH|RUDE|Ryotox|SAFETY|SASHiMi|SEiGHT|SESKAPiLE|SHEEEiT|SHiNiGAMi(UHD)?|SiGeRiS|SILVIODANTE|SLEEPINGFOREST|SODAPOP|S4LVE|SPINE|SPOiLER|STRINGERBELL|Sunday26th|SUNRiSE|tFR|THENiGHTMAREiNHD|THiNK|THREESOME|TiMELiNE|TSuNaMi|UKDHD|UKDTV|ULSHD|Ulysse|USUNSKiLLED|URY|VENUE|VFC|VoMiT|Wednesday29th|ZEST|ZiRCON)\b', NULL, NULL);
-- --- END op 169

-- --- BEGIN op 170 ( create regular_expression "RADARR - FR UHD Bluray Tier 01 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RADARR - FR UHD Bluray Tier 01 Teams', '\b(FLOP|FRATERNiTY|FoX|Psaro)\b', NULL, NULL);
-- --- END op 170

-- --- BEGIN op 171 ( create regular_expression "RADARR - FR UHD Bluray Tier 02 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RADARR - FR UHD Bluray Tier 02 Teams', '\b(DUSTiN|FCK|FrIeNdS|QUALiTY)\b', NULL, NULL);
-- --- END op 171

-- --- BEGIN op 172 ( create regular_expression "RADARR - FR WEB Tier 01 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RADARR - FR WEB Tier 01 Teams', '\b(BONBON|FCK|FLOP|FW|FoX|RG|FRATERNiTY|FrIeNdS|MOONLY|MTDK|PATOPESTO|Psaro|T3KASHi|TFA|TiNA|SERQPH|SUPPLY)\b', NULL, NULL);
-- --- END op 172

-- --- BEGIN op 173 ( create regular_expression "RADARR - FR WEB Tier 02 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RADARR - FR WEB Tier 02 Teams', '\b(ALLDAYiN|ARK01|FUJiSAN|HANAMi|HeavyWeight|NEO|NoNe|ONLYMOViE|POTO|Slay3R|TkHD|WaCkS)\b', NULL, NULL);
-- --- END op 173

-- --- BEGIN op 174 ( create regular_expression "SDR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SDR', '\bSDR\b', NULL, NULL);
-- --- END op 174

-- --- BEGIN op 175 ( create regular_expression "SONARR - FR Anime FanSub Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SONARR - FR Anime FanSub Teams', '\b(Anime[ .-]?Heart|Kaerizaki[ .-]?Fansub|Natsumi[ .-]?no[ .-]?Sekai|NekoYu\\''?|Onii[ .-]?ChanSub|Owlolf|Pikari[ .-]?Teshima|Seimeisen|(Team[ .-])?Arcedo|Yarashii|Yangire[ .-]?Raws)\b', NULL, NULL);
-- --- END op 175

-- --- BEGIN op 176 ( create regular_expression "SONARR - FR Anime Tier 01 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SONARR - FR Anime Tier 01 Teams', '\b(Darki|Delivroozzi|Fuceo|Good[ .-]?(Job|Rip|Sub)!?[ .-]?Alexis|Punisher694|SR-71|T3KASHi|SERQPH|TANOSHii|Tsundere[ .-]?Raws)\b', NULL, NULL);
-- --- END op 176

-- --- BEGIN op 177 ( create regular_expression "SONARR - FR Anime Tier 02 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SONARR - FR Anime Tier 02 Teams', '\b(Aoi[ .-]?Project|Elecman|FUJiSAN|GundamGuy|IssouCorp|KAF|Nagutos|OECUF|XSPITFIRE911)\b', NULL, NULL);
-- --- END op 177

-- --- BEGIN op 178 ( create regular_expression "SONARR - FR Anime Tier 03 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SONARR - FR Anime Tier 03 Teams', '\b(BLV|D3T3R10R1TY|Galactic|HANAMi|kazui(zui)?|KHAYA|KushEnthusiast|matheousse|Monkey[ .-]?D[ .-]?Lulu|NeoSG|RONiN|TheFantastics|TTN)\b', NULL, NULL);
-- --- END op 178

-- --- BEGIN op 179 ( create regular_expression "SONARR - FR HD Bluray Tier 01 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SONARR - FR HD Bluray Tier 01 Teams', '\b(ARK01|BONBON|FRATERNiTY|FTMVHD|HeavyWeight|Psaro)\b', NULL, NULL);
-- --- END op 179

-- --- BEGIN op 180 ( create regular_expression "SONARR - FR Remux Tier 01 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SONARR - FR Remux Tier 01 Teams', '\b(FtLi|Goldenyann|HDForever|HeavyWeight|ONLY|Psaro|TyrellCorp)\b', NULL, NULL);
-- --- END op 180

-- --- BEGIN op 181 ( create regular_expression "SONARR - FR Scene Groups Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SONARR - FR Scene Groups Teams', '\b(4FR|AiR3D|AiRDOCS|AiRFORCE|AiRLiNE|AiRTV|AMB3R|ANMWR|AVON|AYMO|AZR|BANKAi|BAWLS|BiPOLAR|BLACKPANTERS|BODIE|BOOLZ|BRiNK|BTT|CARAPiLS|CiELOS|CiNEMA|CMBHD|CoRa|COUAC|CRYPT0|D4KiD|DEAL|DiEBEX|DUPLI|DUSS|ENJOi|EUBDS|FHD|FiDELiO|FiDO|ForceBleue|FREAMON|FRENCHDEADPOOL2|FRiES|FUTiL|FWDHD|GHOULS|GiMBAP|GLiMMER|Goatlove|HERC|HiggsBoson|HiRoSHiMa|HYBRiS|HyDe|JMT|JoKeR|JUSTICELEAGUE|KAZETV|L0SERNiGHT|LaoZi|LeON|LOFiDEL|LOST|LOWIMDB|LUCKY|LYPSG|MAGiCAL|MANGACiTY|MAXAGAZ|MaxiBeNoul|McNULTY|MELBA|MiND|MORELAND|MUNSTER|MUxHD|N0Z00M|NERDHD|NERO|NrZ|NTK|OBSTACLE|OohLaLa|OOKAMI|PANZeR|PATHECROUTE|Penrose|PHoQUE|PiNKPANTERS|PKPTRS|PRiDEHD|PROPJOE|PURE|PUREWASTEOFBW|ROUGH|RUDE|Ryotox|SAFETY|SASHiMi|SEiGHT|SESKAPiLE|SharpHD|SHEEEiT|SHiNiGAMi(UHD)?|SiGeRiS|SILVIODANTE|SLEEPINGFOREST|SODAPOP|S4LVE|SPINE|SPOiLER|STRINGERBELL|Sunday26th|SUNRiSE|tFR|THENiGHTMAREiNHD|THiNK|THREESOME|TiMELiNE|TSuNaMi|UKDHD|UKDTV|ULSHD|Ulysse|(US)?UNSKiLLED|URY|USURY|VENUE|VFC|VoMiT|Wednesday29th|ZEST|ZiRCON)\b', NULL, NULL);
-- --- END op 181

-- --- BEGIN op 182 ( create regular_expression "SONARR - FR WEB Tier 01 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SONARR - FR WEB Tier 01 Teams', '\b(BONBON|FCK|FW|FRATERNiTY|MTDK|NoLo|PATOPESTO|Psaro|TFA|TiNA|SUPPLY)\b', NULL, NULL);
-- --- END op 182

-- --- BEGIN op 183 ( create regular_expression "SONARR - FR WEB Tier 02 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SONARR - FR WEB Tier 02 Teams', '\b(COLL3CTiF|FiND|FrIeNdS|HeavyWeight|NoNe|pERsO|POTO|RG|RiPiT|TAT)\b', NULL, NULL);
-- --- END op 183

-- --- BEGIN op 184 ( create regular_expression "SONARR - FR WEB Tier 03 Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SONARR - FR WEB Tier 03 Teams', '\b(ARK01|BraD|dRuIdE|FTMVHD|LAZARUS|MYSTERiON|Scaph|WaCkS|WQM)\b', NULL, NULL);
-- --- END op 184

-- --- BEGIN op 185 ( create regular_expression "SONARR - REMUX Title" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SONARR - REMUX Title', '\bREMUX\b', NULL, NULL);
-- --- END op 185

-- --- BEGIN op 186 ( create regular_expression "VF2-VFI" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VF2-VFI', '\b(VFI|VF2)\b', NULL, NULL);
-- --- END op 186

-- --- BEGIN op 187 ( create regular_expression "VFF" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VFF', '\b(VFF|VOF|TRUEFRENCH)\b', NULL, NULL);
-- --- END op 187

-- --- BEGIN op 188 ( create regular_expression "VFQ" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VFQ', '\b(VQ|VFQ)\b', NULL, NULL);
-- --- END op 188

-- --- BEGIN op 189 ( create regular_expression "VOSTEN Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VOSTEN Teams', '\b(MrHulk|RL|EDITH|PandaMoon|SYNFM)\b', NULL, NULL);
-- --- END op 189

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
