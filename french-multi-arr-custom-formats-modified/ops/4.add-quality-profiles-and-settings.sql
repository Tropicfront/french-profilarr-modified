-- @operation: export
-- @entity: batch
-- @name: Add Quality Profiles And Settings (Modified)
-- @description: film 2h=10Go WEBDL-1080p | épisode 25min=300Mo WEBDL-1080p

-- --- BEGIN op 310 ( create radarr_naming "Radarr" )
insert into "radarr_naming" ("name", "rename", "movie_format", "movie_folder_format", "replace_illegal_characters", "colon_replacement_format") values ('Radarr', 1, '{Movie CleanTitle} {(Release Year)} [tmdbid-{TmdbId}] - {Edition Tags }{[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[Mediainfo VideoCodec]}{-Release Group}{Movie CleanTitle}', '{Movie CleanTitle} ({Release Year}) [tmdbid-{TmdbId}]', 1, 'delete');
-- --- END op 310

-- --- BEGIN op 311 ( create sonarr_naming "Sonarr" )
insert into "sonarr_naming" ("name", "rename", "standard_episode_format", "daily_episode_format", "anime_episode_format", "series_folder_format", "season_folder_format", "replace_illegal_characters", "colon_replacement_format", "custom_colon_replacement_format", "multi_episode_style") values ('Sonarr', 1, '{Series TitleYear} - S{season:00}E{episode:00} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}{Series CleanTitle}', '{Series TitleYear} - {Air-Date} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}', '{Series TitleYear} - S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{MediaInfo AudioLanguages}{[MediaInfo VideoDynamicRangeType]}[{Mediainfo VideoCodec }{MediaInfo VideoBitDepth}bit]{-Release Group}', '{Series TitleYear} [tmdbid-{TmdbId}]', 'Season {season:00}', 1, 0, NULL, 5);
-- --- END op 311

-- --- BEGIN op 318 ( create radarr_quality_definitions "Radarr" )
-- Référence : WEBDL-1080p film 2h = 10 Go (min 2.0, max 15.0)
-- Remux : min seulement (0 = illimité)
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Unknown', 0, 0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Raw-HD', 0, 0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'BR-DISK', 0, 0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'CAM', 0, 0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WORKPRINT', 0, 0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'TELECINE', 0, 0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'TELESYNC', 0, 0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'DVDSCR', 0, 0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'REGIONAL', 0, 0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'SDTV', 0.1, 2.5, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'DVD', 0.1, 3.0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'DVD-R', 0.1, 3.5, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-480p', 0.1, 3.5, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-480p', 0.1, 2.5, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-480p', 0.1, 2.5, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-576p', 0.2, 4.0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'HDTV-720p', 0.5, 6.0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-720p', 0.8, 7.5, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-720p', 0.8, 7.5, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-720p', 1.0, 10.0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'HDTV-1080p', 1.5, 12.0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-1080p', 2.0, 15.0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-1080p', 2.0, 15.0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-1080p', 3.0, 35.0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Remux-1080p', 10.0, 0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'HDTV-2160p', 5.0, 40.0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-2160p', 8.0, 50.0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-2160p', 8.0, 50.0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-2160p', 15.0, 100.0, 0);
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Remux-2160p', 30.0, 0, 0);
-- --- END op 318

-- --- BEGIN op 319 ( create sonarr_quality_definitions "Sonarr" )
-- Référence : WEBDL-1080p épisode 25min = 300 Mo (min 0.15, max 1.5)
-- Max généreux pour épisodes 45-60min et Bluray
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Unknown', 0, 0, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Raw-HD', 0, 0, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'SDTV', 0.01, 0.2, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'DVD', 0.01, 0.25, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-480p', 0.01, 0.25, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-480p', 0.01, 0.2, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-480p', 0.01, 0.2, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-576p', 0.02, 0.35, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'HDTV-720p', 0.04, 0.6, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-720p', 0.05, 0.75, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-720p', 0.05, 0.75, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-720p', 0.06, 1.0, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'HDTV-1080p', 0.1, 1.0, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-1080p', 0.15, 1.5, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-1080p', 0.15, 1.5, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-1080p', 0.2, 3.5, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Remux-1080p', 0.4, 0, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'HDTV-2160p', 0.3, 4.0, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-2160p', 0.4, 5.0, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-2160p', 0.4, 5.0, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-2160p', 0.6, 10.0, 0);
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Remux-2160p', 1.0, 0, 0);
-- --- END op 319

-- --- BEGIN op 320 ( create radarr_media_settings "Radarr" )
insert into "radarr_media_settings" ("name", "propers_repacks", "enable_media_info") values ('Radarr', 'doNotPrefer', 1);
-- --- END op 320

-- --- BEGIN op 321 ( create sonarr_media_settings "Sonarr" )
insert into "sonarr_media_settings" ("name", "propers_repacks", "enable_media_info") values ('Sonarr', 'doNotPrefer', 1);
-- --- END op 321

-- --- BEGIN op 322 ( create quality_profile "Best FR MULTi Audio" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment")
values ('Best FR MULTi Audio', 'Profil unique FR. 1080p prioritaire, upgrade 4K possible. Toutes langues FR.', 1, 0, 999999, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Best FR MULTi Audio', 'HD (1080p)');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'HD (1080p)', 'Remux-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'HD (1080p)', 'Bluray-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'HD (1080p)', 'WEBDL-1080p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'HD (1080p)', 'WEBRip-1080p', 3);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'HD (1080p)', 'HDTV-1080p', 4);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
VALUES ('Best FR MULTi Audio', NULL, 'HD (1080p)', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Best FR MULTi Audio', '4K (2160p)');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', '4K (2160p)', 'Remux-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', '4K (2160p)', 'Bluray-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', '4K (2160p)', 'WEBDL-2160p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', '4K (2160p)', 'WEBRip-2160p', 3);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', '4K (2160p)', 'HDTV-2160p', 4);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
VALUES ('Best FR MULTi Audio', NULL, '4K (2160p)', 1, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Best FR MULTi Audio', 'SD (720p)');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'SD (720p)', 'Bluray-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'SD (720p)', 'WEBDL-720p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'SD (720p)', 'WEBRip-720p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'SD (720p)', 'HDTV-720p', 3);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'SD (720p)', 'Bluray-576p', 4);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
VALUES ('Best FR MULTi Audio', NULL, 'SD (720p)', 2, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Best FR MULTi Audio', 'SD (480p)');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'SD (480p)', 'Bluray-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'SD (480p)', 'WEBDL-480p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'SD (480p)', 'WEBRip-480p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'SD (480p)', 'DVD', 3);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'SD (480p)', 'DVD-R', 4);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'SD (480p)', 'SDTV', 5);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
VALUES ('Best FR MULTi Audio', NULL, 'SD (480p)', 3, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Best FR MULTi Audio', 'Pre-releases');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'Pre-releases', 'REGIONAL', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'Pre-releases', 'DVDSCR', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'Pre-releases', 'TELECINE', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'Pre-releases', 'TELESYNC', 3);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'Pre-releases', 'CAM', 4);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'Pre-releases', 'WORKPRINT', 5);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
VALUES ('Best FR MULTi Audio', NULL, 'Pre-releases', 4, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Best FR MULTi Audio', 'Unwanted');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'Unwanted', 'Unknown', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'Unwanted', 'Raw-HD', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Best FR MULTi Audio', 'Unwanted', 'BR-DISK', 2);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
VALUES ('Best FR MULTi Audio', NULL, 'Unwanted', 5, 1, 0);

-- --- END op 322

-- --- BEGIN op 323 ( score MULTi Audio radarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'MULTi Audio', 'radarr', 1500
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'MULTi Audio' AND arr_type = 'radarr');
-- --- END op 323

-- --- BEGIN op 324 ( score MULTi Audio sonarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'MULTi Audio', 'sonarr', 1500
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'MULTi Audio' AND arr_type = 'sonarr');
-- --- END op 324

-- --- BEGIN op 325 ( score VFF (no VFQ) radarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'VFF (no VFQ)', 'radarr', 800
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'VFF (no VFQ)' AND arr_type = 'radarr');
-- --- END op 325

-- --- BEGIN op 326 ( score VFF (no VFQ) sonarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'VFF (no VFQ)', 'sonarr', 800
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'VFF (no VFQ)' AND arr_type = 'sonarr');
-- --- END op 326

-- --- BEGIN op 327 ( score VF2-VFI radarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'VF2-VFI', 'radarr', 600
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'VF2-VFI' AND arr_type = 'radarr');
-- --- END op 327

-- --- BEGIN op 328 ( score VF2-VFI sonarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'VF2-VFI', 'sonarr', 600
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'VF2-VFI' AND arr_type = 'sonarr');
-- --- END op 328

-- --- BEGIN op 329 ( score FR HD Light Tier radarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'FR HD Light Tier', 'radarr', 200
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'FR HD Light Tier' AND arr_type = 'radarr');
-- --- END op 329

-- --- BEGIN op 330 ( score FR HD Light Tier sonarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'FR HD Light Tier', 'sonarr', 200
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'FR HD Light Tier' AND arr_type = 'sonarr');
-- --- END op 330

-- --- BEGIN op 331 ( score VOSTFR radarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'VOSTFR', 'radarr', 100
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'VOSTFR' AND arr_type = 'radarr');
-- --- END op 331

-- --- BEGIN op 332 ( score VOSTFR sonarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'VOSTFR', 'sonarr', 100
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'VOSTFR' AND arr_type = 'sonarr');
-- --- END op 332

-- --- BEGIN op 333 ( score VOSTEN radarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'VOSTEN', 'radarr', 50
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'VOSTEN' AND arr_type = 'radarr');
-- --- END op 333

-- --- BEGIN op 334 ( score VOSTEN sonarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'VOSTEN', 'sonarr', 50
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'VOSTEN' AND arr_type = 'sonarr');
-- --- END op 334

-- --- BEGIN op 335 ( score Bad x265 (HD) radarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'Bad x265 (HD)', 'radarr', -40
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'Bad x265 (HD)' AND arr_type = 'radarr');
-- --- END op 335

-- --- BEGIN op 336 ( score Bad x265 (HD) sonarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'Bad x265 (HD)', 'sonarr', -40
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'Bad x265 (HD)' AND arr_type = 'sonarr');
-- --- END op 336

-- --- BEGIN op 337 ( score SDR radarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'SDR', 'radarr', -2000
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'SDR' AND arr_type = 'radarr');
-- --- END op 337

-- --- BEGIN op 338 ( score SDR sonarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'SDR', 'sonarr', -2000
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'SDR' AND arr_type = 'sonarr');
-- --- END op 338

-- --- BEGIN op 339 ( score VFQ (No VFF) radarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'VFQ (No VFF)', 'radarr', -10000
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'VFQ (No VFF)' AND arr_type = 'radarr');
-- --- END op 339

-- --- BEGIN op 340 ( score VFQ (No VFF) sonarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'VFQ (No VFF)', 'sonarr', -10000
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'VFQ (No VFF)' AND arr_type = 'sonarr');
-- --- END op 340

-- --- BEGIN op 341 ( score FR LQ radarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'FR LQ', 'radarr', -10000
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'FR LQ' AND arr_type = 'radarr');
-- --- END op 341

-- --- BEGIN op 342 ( score FR LQ sonarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'FR LQ', 'sonarr', -10000
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'FR LQ' AND arr_type = 'sonarr');
-- --- END op 342

-- --- BEGIN op 343 ( score 3D radarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', '3D', 'radarr', -10000
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = '3D' AND arr_type = 'radarr');
-- --- END op 343

-- --- BEGIN op 344 ( score 3D sonarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', '3D', 'sonarr', -10000
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = '3D' AND arr_type = 'sonarr');
-- --- END op 344

-- --- BEGIN op 345 ( score SONARR - FR Anime FanSub sonarr )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Best FR MULTi Audio', 'SONARR - FR Anime FanSub', 'sonarr', 300
WHERE NOT EXISTS (SELECT 1 FROM quality_profile_custom_formats WHERE quality_profile_name = 'Best FR MULTi Audio' AND custom_format_name = 'SONARR - FR Anime FanSub' AND arr_type = 'sonarr');
-- --- END op 345