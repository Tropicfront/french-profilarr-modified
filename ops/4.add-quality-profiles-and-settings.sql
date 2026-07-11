-- @operation: export
-- @entity: batch
-- @name: Add Quality Profiles And Settings
-- @exportedAt: 2026-05-18T21:50:37.539Z
-- @opIds: 310, 311, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497

-- --- BEGIN op 310 ( create radarr_naming "Radarr" )
insert into "radarr_naming" ("name", "rename", "movie_format", "movie_folder_format", "replace_illegal_characters", "colon_replacement_format") values ('Radarr', 1, '{Movie CleanTitle} {(Release Year)} [tmdbid-{TmdbId}] - {Edition Tags }{[Custom Formats]}{[Quality Full]}{[MediaInfo 3D]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[Mediainfo VideoCodec]}{-Release Group}{Movie CleanTitle}', '{Movie CleanTitle} ({Release Year}) [tmdbid-{TmdbId}]', 1, 'delete');
-- --- END op 310

-- --- BEGIN op 311 ( create sonarr_naming "Sonarr" )
insert into "sonarr_naming" ("name", "rename", "standard_episode_format", "daily_episode_format", "anime_episode_format", "series_folder_format", "season_folder_format", "replace_illegal_characters", "colon_replacement_format", "custom_colon_replacement_format", "multi_episode_style") values ('Sonarr', 1, '{Series TitleYear} - S{season:00}E{episode:00} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}{Series CleanTitle}', '{Series TitleYear} - {Air-Date} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}', '{Series TitleYear} - S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{MediaInfo AudioLanguages}{[MediaInfo VideoDynamicRangeType]}[{Mediainfo VideoCodec }{MediaInfo VideoBitDepth}bit]{-Release Group}', '{Series TitleYear} [tmdbid-{TmdbId}]', 'Season {season:00}', 1, 0, NULL, 5);
-- --- END op 311

-- --- BEGIN op 318 ( create radarr_quality_definitions "Radarr" )
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-1080p', 50.8, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-2160p', 102, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-480p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-576p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-720p', 25.7, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'BR-DISK', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'CAM', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'DVD', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'DVD-R', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'DVDSCR', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'HDTV-1080p', 33.8, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'HDTV-2160p', 85, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'HDTV-720p', 17.1, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Raw-HD', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'REGIONAL', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Remux-1080p', 102, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Remux-2160p', 187.4, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'SDTV', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'TELECINE', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'TELESYNC', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Unknown', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-1080p', 12.5, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-2160p', 34.5, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-480p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-720p', 12.5, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-1080p', 12.5, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-2160p', 34.5, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-480p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-720p', 12.5, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WORKPRINT', 0, 0, 0);
-- --- END op 318

-- --- BEGIN op 319 ( create sonarr_quality_definitions "Sonarr" )
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-1080p', 50.4, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-2160p', 94.6, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-480p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-576p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-720p', 10, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'DVD', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'HDTV-1080p', 17.1, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'HDTV-2160p', 25, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'HDTV-720p', 15, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Raw-HD', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Remux-1080p', 69.1, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Remux-2160p', 187.4, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'SDTV', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Unknown', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-1080p', 15, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-2160p', 25, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-480p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-720p', 10, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-1080p', 15, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-2160p', 25, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-480p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-720p', 10, 0, 0);
-- --- END op 319

-- --- BEGIN op 320 ( create radarr_media_settings "Radarr" )
insert into "radarr_media_settings" ("name", "propers_repacks", "enable_media_info") values ('Radarr', 'doNotPrefer', 1);
-- --- END op 320

-- --- BEGIN op 321 ( create sonarr_media_settings "Sonarr" )
insert into "sonarr_media_settings" ("name", "propers_repacks", "enable_media_info") values ('Sonarr', 'doNotPrefer', 1);
-- --- END op 321

-- --- BEGIN op 322 ( create quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('4K (No Remux) - Best FR Team Multi Audio', NULL, 1, 0, 0, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'WEB 1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'WEB 1080p', 'WEBDL-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'WEB 1080p', 'WEBRip-1080p', 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Pre-releases');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Pre-releases', 'REGIONAL', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Pre-releases', 'DVDSCR', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Pre-releases', 'TELECINE', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Pre-releases', 'TELESYNC', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Pre-releases', 'CAM', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Pre-releases', 'WORKPRINT', 5);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Unwanted');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Unwanted', 'Unknown', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Unwanted', 'Raw-HD', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Unwanted', 'BR-DISK', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Remux-2160p', NULL, 1, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Bluray-2160p', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'WEBDL-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'WEBRip-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'HDTV-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Remux-1080p', NULL, 6, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Bluray-1080p', NULL, 7, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', NULL, 'WEB 1080p', 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'HDTV-1080p', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Bluray-720p', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'WEBDL-720p', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'WEBRip-720p', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'HDTV-720p', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Bluray-576p', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'Bluray-480p', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'WEBDL-480p', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'WEBRip-480p', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'HDTV-480p', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'DVD-R', NULL, 19, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'DVD', NULL, 20, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', 'SDTV', NULL, 21, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', NULL, 'Pre-releases', 22, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K (No Remux) - Best FR Team Multi Audio', NULL, 'Unwanted', 23, 0, 0);
-- --- END op 322

-- --- BEGIN op 323 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
update "quality_profiles" set "upgrade_until_score" = 999999 where "name" = '4K (No Remux) - Best FR Team Multi Audio' and "upgrade_until_score" = 0;
-- --- END op 323

-- --- BEGIN op 324 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', '3D', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 324

-- --- BEGIN op 325 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', '3D', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = '3D'
    AND arr_type = 'sonarr'
);
-- --- END op 325

-- --- BEGIN op 326 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'Bad x265 (HD)', 'radarr', -40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'Bad x265 (HD)'
    AND arr_type = 'radarr'
);
-- --- END op 326

-- --- BEGIN op 327 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'Bad x265 (HD)', 'sonarr', -40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'Bad x265 (HD)'
    AND arr_type = 'sonarr'
);
-- --- END op 327

-- --- BEGIN op 328 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'FR HD Light Tier', 'radarr', 2100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'FR HD Light Tier'
    AND arr_type = 'radarr'
);
-- --- END op 328

-- --- BEGIN op 329 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'FR HD Light Tier', 'sonarr', 2100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'FR HD Light Tier'
    AND arr_type = 'sonarr'
);
-- --- END op 329

-- --- BEGIN op 330 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'FR LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'FR LQ'
    AND arr_type = 'radarr'
);
-- --- END op 330

-- --- BEGIN op 331 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'FR LQ', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'FR LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 331

-- --- BEGIN op 332 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'MULTi Audio', 'radarr', 950
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'MULTi Audio'
    AND arr_type = 'radarr'
);
-- --- END op 332

-- --- BEGIN op 333 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'MULTi Audio', 'sonarr', 950
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'MULTi Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 333

-- --- BEGIN op 334 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'RADARR - FR HD Bluray Tier 01', 'radarr', 2600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR HD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 334

-- --- BEGIN op 335 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'RADARR - FR HD Bluray Tier 02', 'radarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR HD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 335

-- --- BEGIN op 336 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'RADARR - FR Remux Tier 01', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR Remux Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 336

-- --- BEGIN op 337 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'RADARR - FR Remux Tier 02', 'radarr', 2900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR Remux Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 337

-- --- BEGIN op 338 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'RADARR - FR Scene Teams', 'radarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR Scene Teams'
    AND arr_type = 'radarr'
);
-- --- END op 338

-- --- BEGIN op 339 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'RADARR - FR UHD Bluray Tier 01', 'radarr', 2800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR UHD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 339

-- --- BEGIN op 340 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'RADARR - FR UHD Bluray Tier 02', 'radarr', 2700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR UHD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 340

-- --- BEGIN op 341 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'RADARR - FR WEB Tier 01', 'radarr', 2400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 341

-- --- BEGIN op 342 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'RADARR - FR WEB Tier 02', 'radarr', 2300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 342

-- --- BEGIN op 343 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SDR', 'radarr', -2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SDR'
    AND arr_type = 'radarr'
);
-- --- END op 343

-- --- BEGIN op 344 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SDR', 'sonarr', -2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SDR'
    AND arr_type = 'sonarr'
);
-- --- END op 344

-- --- BEGIN op 345 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SONARR - FR Anime FanSub', 'sonarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime FanSub'
    AND arr_type = 'sonarr'
);
-- --- END op 345

-- --- BEGIN op 346 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SONARR - FR Anime Tier 01', 'sonarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 346

-- --- BEGIN op 347 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SONARR - FR Anime Tier 02', 'sonarr', 2400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 347

-- --- BEGIN op 348 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SONARR - FR Anime Tier 03', 'sonarr', 2300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 348

-- --- BEGIN op 349 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SONARR - FR HD Bluray Tier 01', 'sonarr', 2600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR HD Bluray Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 349

-- --- BEGIN op 350 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SONARR - FR Remux Tier 01', 'sonarr', 2700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Remux Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 350

-- --- BEGIN op 351 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SONARR - FR Scene Groups', 'sonarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Scene Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 351

-- --- BEGIN op 352 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SONARR - FR WEB Tier 01', 'sonarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 352

-- --- BEGIN op 353 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SONARR - FR WEB Tier 02', 'sonarr', 2400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 353

-- --- BEGIN op 354 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SONARR - FR WEB Tier 03', 'sonarr', 2300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 354

-- --- BEGIN op 355 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'VF2-VFI', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VF2-VFI'
    AND arr_type = 'radarr'
);
-- --- END op 355

-- --- BEGIN op 356 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'VF2-VFI', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VF2-VFI'
    AND arr_type = 'sonarr'
);
-- --- END op 356

-- --- BEGIN op 357 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'VFF (no VFQ)', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VFF (no VFQ)'
    AND arr_type = 'radarr'
);
-- --- END op 357

-- --- BEGIN op 358 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'VFF (no VFQ)', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VFF (no VFQ)'
    AND arr_type = 'sonarr'
);
-- --- END op 358

-- --- BEGIN op 359 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'VFQ (No VFF)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VFQ (No VFF)'
    AND arr_type = 'radarr'
);
-- --- END op 359

-- --- BEGIN op 360 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'VFQ (No VFF)', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VFQ (No VFF)'
    AND arr_type = 'sonarr'
);
-- --- END op 360

-- --- BEGIN op 361 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'VOSTEN', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTEN'
    AND arr_type = 'radarr'
);
-- --- END op 361

-- --- BEGIN op 362 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'VOSTEN', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTEN'
    AND arr_type = 'sonarr'
);
-- --- END op 362

-- --- BEGIN op 363 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'VOSTFR', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 363

-- --- BEGIN op 364 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'VOSTFR', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 364

-- --- BEGIN op 365 ( update quality_profile "4K (No Remux) - Best FR Team Multi Audio" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_groups
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND name = 'WEB 1080p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'WEBDL-720p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'WEBRip-720p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '4K (No Remux) - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'Bluray-2160p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
    AND quality_name = 'Bluray-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'WEBDL-2160p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
    AND quality_name = 'WEBDL-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'WEBRip-2160p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
    AND quality_name = 'WEBRip-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'HDTV-2160p', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
    AND quality_name = 'HDTV-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'Bluray-1080p', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
    AND quality_name = 'Bluray-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'HDTV-1080p', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
    AND quality_name = 'HDTV-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'WEBDL-1080p', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
    AND quality_name = 'WEBDL-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'WEBRip-1080p', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
    AND quality_name = 'WEBRip-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '4K (No Remux) - Best FR Team Multi Audio', NULL, '4K (2160p-No Remux) - HD (1080p-No Remux)', 0, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_name IS NULL
    AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND name = 'SD (720p - 480p)'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'Bluray-720p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = 'SD (720p - 480p)'
    AND quality_name = 'Bluray-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBDL-720p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = 'SD (720p - 480p)'
    AND quality_name = 'WEBDL-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBRip-720p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = 'SD (720p - 480p)'
    AND quality_name = 'WEBRip-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'HDTV-720p', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = 'SD (720p - 480p)'
    AND quality_name = 'HDTV-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'Bluray-576p', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = 'SD (720p - 480p)'
    AND quality_name = 'Bluray-576p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'Bluray-480p', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = 'SD (720p - 480p)'
    AND quality_name = 'Bluray-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBDL-480p', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = 'SD (720p - 480p)'
    AND quality_name = 'WEBDL-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBRip-480p', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = 'SD (720p - 480p)'
    AND quality_name = 'WEBRip-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'HDTV-480p', 8
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = 'SD (720p - 480p)'
    AND quality_name = 'HDTV-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'DVD-R', 9
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = 'SD (720p - 480p)'
    AND quality_name = 'DVD-R'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'DVD', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = 'SD (720p - 480p)'
    AND quality_name = 'DVD'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '4K (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'SDTV', 11
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_group_name = 'SD (720p - 480p)'
    AND quality_name = 'SDTV'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '4K (No Remux) - Best FR Team Multi Audio', NULL, 'SD (720p - 480p)', 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
    AND quality_name IS NULL
    AND quality_group_name = 'SD (720p - 480p)'
);

UPDATE quality_profile_qualities
SET position = 2, enabled = 1
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = 'Pre-releases'
  AND quality_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3, enabled = 1
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
  AND quality_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted') = 3
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
      AND quality_name NOT IN ('Unknown', 'Raw-HD', 'BR-DISK')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
        AND NOT (
          (quality_name = 'Unknown'
        AND position = 0)
      OR (quality_name = 'Raw-HD'
        AND position = 1)
      OR (quality_name = 'BR-DISK'
        AND position = 2)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '4K (No Remux) - Best FR Team Multi Audio'
      AND quality_group_name = 'Unwanted'
  ) = 0 AS ok
),
new_rows AS (
SELECT '4K (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'Unknown' AS quality_name, 0 AS position
UNION ALL
SELECT '4K (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'Raw-HD' AS quality_name, 1 AS position
UNION ALL
SELECT '4K (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'BR-DISK' AS quality_name, 2 AS position
UNION ALL
SELECT '4K (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'Remux-2160p' AS quality_name, 3 AS position
UNION ALL
SELECT '4K (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'Remux-1080p' AS quality_name, 4 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 365

-- --- BEGIN op 366 ( create quality_profile "4K - Best FR Team Multi Audio" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('4K - Best FR Team Multi Audio', NULL, 1, 0, 0, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('4K - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'Bluray-2160p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'WEBDL-2160p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'WEBRip-2160p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'HDTV-2160p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'Bluray-1080p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'HDTV-1080p', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'WEBDL-1080p', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'WEBRip-1080p', 7);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K - Best FR Team Multi Audio', NULL, '4K (2160p-No Remux) - HD (1080p-No Remux)', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('4K - Best FR Team Multi Audio', 'SD (720p - 480p)');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'SD (720p - 480p)', 'Bluray-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBDL-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBRip-720p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'SD (720p - 480p)', 'HDTV-720p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'SD (720p - 480p)', 'Bluray-576p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'SD (720p - 480p)', 'Bluray-480p', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBDL-480p', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBRip-480p', 7);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'SD (720p - 480p)', 'HDTV-480p', 8);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'SD (720p - 480p)', 'DVD-R', 9);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'SD (720p - 480p)', 'DVD', 10);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'SD (720p - 480p)', 'SDTV', 11);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K - Best FR Team Multi Audio', NULL, 'SD (720p - 480p)', 1, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('4K - Best FR Team Multi Audio', 'Pre-releases');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'Pre-releases', 'REGIONAL', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'Pre-releases', 'DVDSCR', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'Pre-releases', 'TELECINE', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'Pre-releases', 'TELESYNC', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'Pre-releases', 'CAM', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'Pre-releases', 'WORKPRINT', 5);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K - Best FR Team Multi Audio', NULL, 'Pre-releases', 2, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('4K - Best FR Team Multi Audio', 'Unwanted');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'Unwanted', 'Unknown', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'Unwanted', 'Raw-HD', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'Unwanted', 'BR-DISK', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'Unwanted', 'Remux-2160p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('4K - Best FR Team Multi Audio', 'Unwanted', 'Remux-1080p', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('4K - Best FR Team Multi Audio', NULL, 'Unwanted', 3, 1, 0);
-- --- END op 366

-- --- BEGIN op 367 ( update quality_profile "4K - Best FR Team Multi Audio" )
update "quality_profiles" set "upgrade_until_score" = 999999 where "name" = '4K - Best FR Team Multi Audio' and "upgrade_until_score" = 0;
-- --- END op 367

-- --- BEGIN op 368 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', '3D', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 368

-- --- BEGIN op 369 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', '3D', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = '3D'
    AND arr_type = 'sonarr'
);
-- --- END op 369

-- --- BEGIN op 370 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'Bad x265 (HD)', 'radarr', -40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'Bad x265 (HD)'
    AND arr_type = 'radarr'
);
-- --- END op 370

-- --- BEGIN op 371 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'Bad x265 (HD)', 'sonarr', -40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'Bad x265 (HD)'
    AND arr_type = 'sonarr'
);
-- --- END op 371

-- --- BEGIN op 372 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'FR HD Light Tier', 'radarr', 2100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'FR HD Light Tier'
    AND arr_type = 'radarr'
);
-- --- END op 372

-- --- BEGIN op 373 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'FR HD Light Tier', 'sonarr', 2100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'FR HD Light Tier'
    AND arr_type = 'sonarr'
);
-- --- END op 373

-- --- BEGIN op 374 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'FR LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'FR LQ'
    AND arr_type = 'radarr'
);
-- --- END op 374

-- --- BEGIN op 375 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'FR LQ', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'FR LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 375

-- --- BEGIN op 376 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'MULTi Audio', 'radarr', 950
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'MULTi Audio'
    AND arr_type = 'radarr'
);
-- --- END op 376

-- --- BEGIN op 377 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'MULTi Audio', 'sonarr', 950
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'MULTi Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 377

-- --- BEGIN op 378 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'RADARR - FR HD Bluray Tier 01', 'radarr', 2600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR HD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 378

-- --- BEGIN op 379 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'RADARR - FR HD Bluray Tier 02', 'radarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR HD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 379

-- --- BEGIN op 380 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'RADARR - FR Remux Tier 01', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR Remux Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 380

-- --- BEGIN op 381 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'RADARR - FR Remux Tier 02', 'radarr', 2900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR Remux Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 381

-- --- BEGIN op 382 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'RADARR - FR Scene Teams', 'radarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR Scene Teams'
    AND arr_type = 'radarr'
);
-- --- END op 382

-- --- BEGIN op 383 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'RADARR - FR UHD Bluray Tier 01', 'radarr', 2800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR UHD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 383

-- --- BEGIN op 384 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'RADARR - FR UHD Bluray Tier 02', 'radarr', 2700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR UHD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 384

-- --- BEGIN op 385 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'RADARR - FR WEB Tier 01', 'radarr', 2400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 385

-- --- BEGIN op 386 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'RADARR - FR WEB Tier 02', 'radarr', 2300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 386

-- --- BEGIN op 387 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'SDR', 'radarr', -2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'SDR'
    AND arr_type = 'radarr'
);
-- --- END op 387

-- --- BEGIN op 388 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'SDR', 'sonarr', -2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'SDR'
    AND arr_type = 'sonarr'
);
-- --- END op 388

-- --- BEGIN op 389 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'SONARR - FR Anime FanSub', 'sonarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime FanSub'
    AND arr_type = 'sonarr'
);
-- --- END op 389

-- --- BEGIN op 390 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'SONARR - FR Anime Tier 01', 'sonarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 390

-- --- BEGIN op 391 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'SONARR - FR Anime Tier 02', 'sonarr', 2400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 391

-- --- BEGIN op 392 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'SONARR - FR Anime Tier 03', 'sonarr', 2300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 392

-- --- BEGIN op 393 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'SONARR - FR HD Bluray Tier 01', 'sonarr', 2600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR HD Bluray Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 393

-- --- BEGIN op 394 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'SONARR - FR Remux Tier 01', 'sonarr', 2700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Remux Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 394

-- --- BEGIN op 395 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'SONARR - FR Scene Groups', 'sonarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Scene Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 395

-- --- BEGIN op 396 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'SONARR - FR WEB Tier 01', 'sonarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 396

-- --- BEGIN op 397 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'SONARR - FR WEB Tier 02', 'sonarr', 2400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 397

-- --- BEGIN op 398 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'SONARR - FR WEB Tier 03', 'sonarr', 2300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 398

-- --- BEGIN op 399 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'VF2-VFI', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'VF2-VFI'
    AND arr_type = 'radarr'
);
-- --- END op 399

-- --- BEGIN op 400 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'VF2-VFI', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'VF2-VFI'
    AND arr_type = 'sonarr'
);
-- --- END op 400

-- --- BEGIN op 401 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'VFF (no VFQ)', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'VFF (no VFQ)'
    AND arr_type = 'radarr'
);
-- --- END op 401

-- --- BEGIN op 402 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'VFF (no VFQ)', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'VFF (no VFQ)'
    AND arr_type = 'sonarr'
);
-- --- END op 402

-- --- BEGIN op 403 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'VFQ (No VFF)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'VFQ (No VFF)'
    AND arr_type = 'radarr'
);
-- --- END op 403

-- --- BEGIN op 404 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'VFQ (No VFF)', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'VFQ (No VFF)'
    AND arr_type = 'sonarr'
);
-- --- END op 404

-- --- BEGIN op 405 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'VOSTEN', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTEN'
    AND arr_type = 'radarr'
);
-- --- END op 405

-- --- BEGIN op 406 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'VOSTEN', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTEN'
    AND arr_type = 'sonarr'
);
-- --- END op 406

-- --- BEGIN op 407 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'VOSTFR', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 407

-- --- BEGIN op 408 ( update quality_profile "4K - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '4K - Best FR Team Multi Audio', 'VOSTFR', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 408

-- --- BEGIN op 409 ( update quality_profile "4K - Best FR Team Multi Audio" )
DELETE FROM quality_group_members
WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted') = 5
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
      AND quality_name NOT IN ('Unknown', 'Raw-HD', 'BR-DISK', 'Remux-2160p', 'Remux-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
        AND NOT (
          (quality_name = 'Unknown'
        AND position = 0)
      OR (quality_name = 'Raw-HD'
        AND position = 1)
      OR (quality_name = 'BR-DISK'
        AND position = 2)
      OR (quality_name = 'Remux-2160p'
        AND position = 3)
      OR (quality_name = 'Remux-1080p'
        AND position = 4)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
      AND quality_group_name = 'Unwanted'
  ) = 0 AS ok
),
new_rows AS (
SELECT '4K - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'Unknown' AS quality_name, 0 AS position
UNION ALL
SELECT '4K - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'Raw-HD' AS quality_name, 1 AS position
UNION ALL
SELECT '4K - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'BR-DISK' AS quality_name, 2 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;

DELETE FROM quality_group_members
WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
  AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
  AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)') = 8
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
  AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
      AND quality_name NOT IN ('Bluray-2160p', 'WEBDL-2160p', 'WEBRip-2160p', 'HDTV-2160p', 'Bluray-1080p', 'HDTV-1080p', 'WEBDL-1080p', 'WEBRip-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
  AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
        AND NOT (
          (quality_name = 'Bluray-2160p'
        AND position = 0)
      OR (quality_name = 'WEBDL-2160p'
        AND position = 1)
      OR (quality_name = 'WEBRip-2160p'
        AND position = 2)
      OR (quality_name = 'HDTV-2160p'
        AND position = 3)
      OR (quality_name = 'Bluray-1080p'
        AND position = 4)
      OR (quality_name = 'HDTV-1080p'
        AND position = 5)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 6)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 7)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
  AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '4K - Best FR Team Multi Audio'
      AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
  ) = 0 AS ok
),
new_rows AS (
SELECT '4K - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'Bluray-2160p' AS quality_name, 0 AS position
UNION ALL
SELECT '4K - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'WEBDL-2160p' AS quality_name, 1 AS position
UNION ALL
SELECT '4K - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'WEBRip-2160p' AS quality_name, 2 AS position
UNION ALL
SELECT '4K - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'HDTV-2160p' AS quality_name, 3 AS position
UNION ALL
SELECT '4K - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'Bluray-1080p' AS quality_name, 4 AS position
UNION ALL
SELECT '4K - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'HDTV-1080p' AS quality_name, 5 AS position
UNION ALL
SELECT '4K - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 6 AS position
UNION ALL
SELECT '4K - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 7 AS position
UNION ALL
SELECT '4K - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'Remux-2160p' AS quality_name, 8 AS position
UNION ALL
SELECT '4K - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'Remux-1080p' AS quality_name, 9 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 409

-- --- BEGIN op 410 ( create quality_profile "HD - Best FR Team Multi Audio" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('HD - Best FR Team Multi Audio', NULL, 1, 0, 0, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('HD - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'Bluray-2160p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'WEBDL-2160p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'WEBRip-2160p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'HDTV-2160p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'Bluray-1080p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'HDTV-1080p', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'WEBDL-1080p', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'WEBRip-1080p', 7);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'Remux-2160p', 8);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'Remux-1080p', 9);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD - Best FR Team Multi Audio', NULL, '4K (2160p-No Remux) - HD (1080p-No Remux)', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('HD - Best FR Team Multi Audio', 'SD (720p - 480p)');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'SD (720p - 480p)', 'Bluray-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBDL-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBRip-720p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'SD (720p - 480p)', 'HDTV-720p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'SD (720p - 480p)', 'Bluray-576p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'SD (720p - 480p)', 'Bluray-480p', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBDL-480p', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBRip-480p', 7);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'SD (720p - 480p)', 'HDTV-480p', 8);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'SD (720p - 480p)', 'DVD-R', 9);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'SD (720p - 480p)', 'DVD', 10);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'SD (720p - 480p)', 'SDTV', 11);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD - Best FR Team Multi Audio', NULL, 'SD (720p - 480p)', 1, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('HD - Best FR Team Multi Audio', 'Pre-releases');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'Pre-releases', 'REGIONAL', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'Pre-releases', 'DVDSCR', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'Pre-releases', 'TELECINE', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'Pre-releases', 'TELESYNC', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'Pre-releases', 'CAM', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'Pre-releases', 'WORKPRINT', 5);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD - Best FR Team Multi Audio', NULL, 'Pre-releases', 2, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('HD - Best FR Team Multi Audio', 'Unwanted');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'Unwanted', 'Unknown', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'Unwanted', 'Raw-HD', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD - Best FR Team Multi Audio', 'Unwanted', 'BR-DISK', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD - Best FR Team Multi Audio', NULL, 'Unwanted', 3, 1, 0);
-- --- END op 410

-- --- BEGIN op 411 ( update quality_profile "HD - Best FR Team Multi Audio" )
update "quality_profiles" set "upgrade_until_score" = 999999 where "name" = 'HD - Best FR Team Multi Audio' and "upgrade_until_score" = 0;
-- --- END op 411

-- --- BEGIN op 412 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', '3D', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 412

-- --- BEGIN op 413 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', '3D', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = '3D'
    AND arr_type = 'sonarr'
);
-- --- END op 413

-- --- BEGIN op 414 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'Bad x265 (HD)', 'radarr', -40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'Bad x265 (HD)'
    AND arr_type = 'radarr'
);
-- --- END op 414

-- --- BEGIN op 415 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'Bad x265 (HD)', 'sonarr', -40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'Bad x265 (HD)'
    AND arr_type = 'sonarr'
);
-- --- END op 415

-- --- BEGIN op 416 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'FR HD Light Tier', 'radarr', 2100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'FR HD Light Tier'
    AND arr_type = 'radarr'
);
-- --- END op 416

-- --- BEGIN op 417 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'FR HD Light Tier', 'sonarr', 2100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'FR HD Light Tier'
    AND arr_type = 'sonarr'
);
-- --- END op 417

-- --- BEGIN op 418 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'FR LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'FR LQ'
    AND arr_type = 'radarr'
);
-- --- END op 418

-- --- BEGIN op 419 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'FR LQ', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'FR LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 419

-- --- BEGIN op 420 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'MULTi Audio', 'radarr', 950
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'MULTi Audio'
    AND arr_type = 'radarr'
);
-- --- END op 420

-- --- BEGIN op 421 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'MULTi Audio', 'sonarr', 950
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'MULTi Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 421

-- --- BEGIN op 422 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'RADARR - FR HD Bluray Tier 01', 'radarr', 2600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR HD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 422

-- --- BEGIN op 423 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'RADARR - FR HD Bluray Tier 02', 'radarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR HD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 423

-- --- BEGIN op 424 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'RADARR - FR Remux Tier 01', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR Remux Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 424

-- --- BEGIN op 425 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'RADARR - FR Remux Tier 02', 'radarr', 2900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR Remux Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 425

-- --- BEGIN op 426 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'RADARR - FR Scene Teams', 'radarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR Scene Teams'
    AND arr_type = 'radarr'
);
-- --- END op 426

-- --- BEGIN op 427 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'RADARR - FR UHD Bluray Tier 01', 'radarr', 2800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR UHD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 427

-- --- BEGIN op 428 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'RADARR - FR UHD Bluray Tier 02', 'radarr', 2700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR UHD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 428

-- --- BEGIN op 429 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'RADARR - FR WEB Tier 01', 'radarr', 2400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 429

-- --- BEGIN op 430 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'RADARR - FR WEB Tier 02', 'radarr', 2300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 430

-- --- BEGIN op 431 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'SDR', 'radarr', -2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'SDR'
    AND arr_type = 'radarr'
);
-- --- END op 431

-- --- BEGIN op 432 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'SDR', 'sonarr', -2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'SDR'
    AND arr_type = 'sonarr'
);
-- --- END op 432

-- --- BEGIN op 433 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'SONARR - FR Anime FanSub', 'sonarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime FanSub'
    AND arr_type = 'sonarr'
);
-- --- END op 433

-- --- BEGIN op 434 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'SONARR - FR Anime Tier 01', 'sonarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 434

-- --- BEGIN op 435 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'SONARR - FR Anime Tier 02', 'sonarr', 2400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 435

-- --- BEGIN op 436 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'SONARR - FR Anime Tier 03', 'sonarr', 2300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 436

-- --- BEGIN op 437 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'SONARR - FR HD Bluray Tier 01', 'sonarr', 2600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR HD Bluray Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 437

-- --- BEGIN op 438 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'SONARR - FR Remux Tier 01', 'sonarr', 2700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Remux Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 438

-- --- BEGIN op 439 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'SONARR - FR Scene Groups', 'sonarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Scene Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 439

-- --- BEGIN op 440 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'SONARR - FR WEB Tier 01', 'sonarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 440

-- --- BEGIN op 441 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'SONARR - FR WEB Tier 02', 'sonarr', 2400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 441

-- --- BEGIN op 442 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'SONARR - FR WEB Tier 03', 'sonarr', 2300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 442

-- --- BEGIN op 443 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'VF2-VFI', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'VF2-VFI'
    AND arr_type = 'radarr'
);
-- --- END op 443

-- --- BEGIN op 444 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'VF2-VFI', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'VF2-VFI'
    AND arr_type = 'sonarr'
);
-- --- END op 444

-- --- BEGIN op 445 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'VFF (no VFQ)', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'VFF (no VFQ)'
    AND arr_type = 'radarr'
);
-- --- END op 445

-- --- BEGIN op 446 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'VFF (no VFQ)', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'VFF (no VFQ)'
    AND arr_type = 'sonarr'
);
-- --- END op 446

-- --- BEGIN op 447 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'VFQ (No VFF)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'VFQ (No VFF)'
    AND arr_type = 'radarr'
);
-- --- END op 447

-- --- BEGIN op 448 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'VFQ (No VFF)', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'VFQ (No VFF)'
    AND arr_type = 'sonarr'
);
-- --- END op 448

-- --- BEGIN op 449 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'VOSTEN', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTEN'
    AND arr_type = 'radarr'
);
-- --- END op 449

-- --- BEGIN op 450 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'VOSTEN', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTEN'
    AND arr_type = 'sonarr'
);
-- --- END op 450

-- --- BEGIN op 451 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'VOSTFR', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 451

-- --- BEGIN op 452 ( update quality_profile "HD - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD - Best FR Team Multi Audio', 'VOSTFR', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 452

-- --- BEGIN op 453 ( update quality_profile "HD - Best FR Team Multi Audio" )
DELETE FROM quality_group_members
WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted') = 3
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
      AND quality_name NOT IN ('Unknown', 'Raw-HD', 'BR-DISK')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
        AND NOT (
          (quality_name = 'Unknown'
        AND position = 0)
      OR (quality_name = 'Raw-HD'
        AND position = 1)
      OR (quality_name = 'BR-DISK'
        AND position = 2)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
      AND quality_group_name = 'Unwanted'
  ) = 0 AS ok
),
new_rows AS (
SELECT 'HD - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'Unknown' AS quality_name, 0 AS position
UNION ALL
SELECT 'HD - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'Raw-HD' AS quality_name, 1 AS position
UNION ALL
SELECT 'HD - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'BR-DISK' AS quality_name, 2 AS position
UNION ALL
SELECT 'HD - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'Bluray-2160p' AS quality_name, 3 AS position
UNION ALL
SELECT 'HD - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'WEBDL-2160p' AS quality_name, 4 AS position
UNION ALL
SELECT 'HD - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'WEBRip-2160p' AS quality_name, 5 AS position
UNION ALL
SELECT 'HD - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'HDTV-2160p' AS quality_name, 6 AS position
UNION ALL
SELECT 'HD - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'Remux-2160p' AS quality_name, 7 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
  AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
  AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)') = 10
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
  AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
      AND quality_name NOT IN ('Bluray-2160p', 'WEBDL-2160p', 'WEBRip-2160p', 'HDTV-2160p', 'Bluray-1080p', 'HDTV-1080p', 'WEBDL-1080p', 'WEBRip-1080p', 'Remux-2160p', 'Remux-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
  AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
        AND NOT (
          (quality_name = 'Bluray-2160p'
        AND position = 0)
      OR (quality_name = 'WEBDL-2160p'
        AND position = 1)
      OR (quality_name = 'WEBRip-2160p'
        AND position = 2)
      OR (quality_name = 'HDTV-2160p'
        AND position = 3)
      OR (quality_name = 'Bluray-1080p'
        AND position = 4)
      OR (quality_name = 'HDTV-1080p'
        AND position = 5)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 6)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 7)
      OR (quality_name = 'Remux-2160p'
        AND position = 8)
      OR (quality_name = 'Remux-1080p'
        AND position = 9)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
  AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = 'HD - Best FR Team Multi Audio'
      AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
  ) = 0 AS ok
),
new_rows AS (
SELECT 'HD - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'Bluray-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT 'HD - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'HDTV-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT 'HD - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 2 AS position
UNION ALL
SELECT 'HD - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 3 AS position
UNION ALL
SELECT 'HD - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'Remux-1080p' AS quality_name, 4 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 453

-- --- BEGIN op 454 ( create quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('HD (No Remux) - Best FR Team Multi Audio', NULL, 1, 0, 0, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('HD (No Remux) - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'Bluray-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'HDTV-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'WEBDL-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'WEBRip-1080p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', '4K (2160p-No Remux) - HD (1080p-No Remux)', 'Remux-1080p', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD (No Remux) - Best FR Team Multi Audio', NULL, '4K (2160p-No Remux) - HD (1080p-No Remux)', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'Bluray-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBDL-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBRip-720p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'HDTV-720p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'Bluray-576p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'Bluray-480p', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBDL-480p', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'WEBRip-480p', 7);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'HDTV-480p', 8);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'DVD-R', 9);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'DVD', 10);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'SD (720p - 480p)', 'SDTV', 11);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD (No Remux) - Best FR Team Multi Audio', NULL, 'SD (720p - 480p)', 1, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Pre-releases');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Pre-releases', 'REGIONAL', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Pre-releases', 'DVDSCR', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Pre-releases', 'TELECINE', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Pre-releases', 'TELESYNC', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Pre-releases', 'CAM', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Pre-releases', 'WORKPRINT', 5);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD (No Remux) - Best FR Team Multi Audio', NULL, 'Pre-releases', 2, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Unwanted');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Unwanted', 'Unknown', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Unwanted', 'Raw-HD', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Unwanted', 'BR-DISK', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Unwanted', 'Bluray-2160p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Unwanted', 'WEBDL-2160p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Unwanted', 'WEBRip-2160p', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Unwanted', 'HDTV-2160p', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD (No Remux) - Best FR Team Multi Audio', 'Unwanted', 'Remux-2160p', 7);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD (No Remux) - Best FR Team Multi Audio', NULL, 'Unwanted', 3, 1, 0);
-- --- END op 454

-- --- BEGIN op 455 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
update "quality_profiles" set "upgrade_until_score" = 999999 where "name" = 'HD (No Remux) - Best FR Team Multi Audio' and "upgrade_until_score" = 0;
-- --- END op 455

-- --- BEGIN op 456 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', '3D', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 456

-- --- BEGIN op 457 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', '3D', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = '3D'
    AND arr_type = 'sonarr'
);
-- --- END op 457

-- --- BEGIN op 458 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'Bad x265 (HD)', 'radarr', -40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'Bad x265 (HD)'
    AND arr_type = 'radarr'
);
-- --- END op 458

-- --- BEGIN op 459 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'Bad x265 (HD)', 'sonarr', -40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'Bad x265 (HD)'
    AND arr_type = 'sonarr'
);
-- --- END op 459

-- --- BEGIN op 460 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'FR HD Light Tier', 'radarr', 2100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'FR HD Light Tier'
    AND arr_type = 'radarr'
);
-- --- END op 460

-- --- BEGIN op 461 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'FR HD Light Tier', 'sonarr', 2100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'FR HD Light Tier'
    AND arr_type = 'sonarr'
);
-- --- END op 461

-- --- BEGIN op 462 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'FR LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'FR LQ'
    AND arr_type = 'radarr'
);
-- --- END op 462

-- --- BEGIN op 463 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'FR LQ', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'FR LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 463

-- --- BEGIN op 464 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'MULTi Audio', 'radarr', 950
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'MULTi Audio'
    AND arr_type = 'radarr'
);
-- --- END op 464

-- --- BEGIN op 465 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'MULTi Audio', 'sonarr', 950
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'MULTi Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 465

-- --- BEGIN op 466 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'RADARR - FR HD Bluray Tier 01', 'radarr', 2600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR HD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 466

-- --- BEGIN op 467 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'RADARR - FR HD Bluray Tier 02', 'radarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR HD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 467

-- --- BEGIN op 468 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'RADARR - FR Remux Tier 01', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR Remux Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 468

-- --- BEGIN op 469 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'RADARR - FR Remux Tier 02', 'radarr', 2900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR Remux Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 469

-- --- BEGIN op 470 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'RADARR - FR Scene Teams', 'radarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR Scene Teams'
    AND arr_type = 'radarr'
);
-- --- END op 470

-- --- BEGIN op 471 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'RADARR - FR UHD Bluray Tier 01', 'radarr', 2800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR UHD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 471

-- --- BEGIN op 472 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'RADARR - FR UHD Bluray Tier 02', 'radarr', 2700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR UHD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 472

-- --- BEGIN op 473 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'RADARR - FR WEB Tier 01', 'radarr', 2400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 473

-- --- BEGIN op 474 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'RADARR - FR WEB Tier 02', 'radarr', 2300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'RADARR - FR WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 474

-- --- BEGIN op 475 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'SDR', 'radarr', -2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SDR'
    AND arr_type = 'radarr'
);
-- --- END op 475

-- --- BEGIN op 476 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'SDR', 'sonarr', -2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SDR'
    AND arr_type = 'sonarr'
);
-- --- END op 476

-- --- BEGIN op 477 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'SONARR - FR Anime FanSub', 'sonarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime FanSub'
    AND arr_type = 'sonarr'
);
-- --- END op 477

-- --- BEGIN op 478 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'SONARR - FR Anime Tier 01', 'sonarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 478

-- --- BEGIN op 479 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'SONARR - FR Anime Tier 02', 'sonarr', 2400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 479

-- --- BEGIN op 480 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'SONARR - FR Anime Tier 03', 'sonarr', 2300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Anime Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 480

-- --- BEGIN op 481 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'SONARR - FR HD Bluray Tier 01', 'sonarr', 2600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR HD Bluray Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 481

-- --- BEGIN op 482 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'SONARR - FR Remux Tier 01', 'sonarr', 2700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Remux Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 482

-- --- BEGIN op 483 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'SONARR - FR Scene Groups', 'sonarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR Scene Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 483

-- --- BEGIN op 484 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'SONARR - FR WEB Tier 01', 'sonarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 484

-- --- BEGIN op 485 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'SONARR - FR WEB Tier 02', 'sonarr', 2400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 485

-- --- BEGIN op 486 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'SONARR - FR WEB Tier 03', 'sonarr', 2300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'SONARR - FR WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 486

-- --- BEGIN op 487 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'VF2-VFI', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VF2-VFI'
    AND arr_type = 'radarr'
);
-- --- END op 487

-- --- BEGIN op 488 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'VF2-VFI', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VF2-VFI'
    AND arr_type = 'sonarr'
);
-- --- END op 488

-- --- BEGIN op 489 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'VFF (no VFQ)', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VFF (no VFQ)'
    AND arr_type = 'radarr'
);
-- --- END op 489

-- --- BEGIN op 490 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'VFF (no VFQ)', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VFF (no VFQ)'
    AND arr_type = 'sonarr'
);
-- --- END op 490

-- --- BEGIN op 491 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'VFQ (No VFF)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VFQ (No VFF)'
    AND arr_type = 'radarr'
);
-- --- END op 491

-- --- BEGIN op 492 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'VFQ (No VFF)', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VFQ (No VFF)'
    AND arr_type = 'sonarr'
);
-- --- END op 492

-- --- BEGIN op 493 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'VOSTEN', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTEN'
    AND arr_type = 'radarr'
);
-- --- END op 493

-- --- BEGIN op 494 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'VOSTEN', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTEN'
    AND arr_type = 'sonarr'
);
-- --- END op 494

-- --- BEGIN op 495 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'VOSTFR', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 495

-- --- BEGIN op 496 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'HD (No Remux) - Best FR Team Multi Audio', 'VOSTFR', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 496

-- --- BEGIN op 497 ( update quality_profile "HD (No Remux) - Best FR Team Multi Audio" )
DELETE FROM quality_group_members
WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted') = 8
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
      AND quality_name NOT IN ('Unknown', 'Raw-HD', 'BR-DISK', 'Bluray-2160p', 'WEBDL-2160p', 'WEBRip-2160p', 'HDTV-2160p', 'Remux-2160p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
        AND NOT (
          (quality_name = 'Unknown'
        AND position = 0)
      OR (quality_name = 'Raw-HD'
        AND position = 1)
      OR (quality_name = 'BR-DISK'
        AND position = 2)
      OR (quality_name = 'Bluray-2160p'
        AND position = 3)
      OR (quality_name = 'WEBDL-2160p'
        AND position = 4)
      OR (quality_name = 'WEBRip-2160p'
        AND position = 5)
      OR (quality_name = 'HDTV-2160p'
        AND position = 6)
      OR (quality_name = 'Remux-2160p'
        AND position = 7)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = 'Unwanted'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
      AND quality_group_name = 'Unwanted'
  ) = 0 AS ok
),
new_rows AS (
SELECT 'HD (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'Unknown' AS quality_name, 0 AS position
UNION ALL
SELECT 'HD (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'Raw-HD' AS quality_name, 1 AS position
UNION ALL
SELECT 'HD (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'BR-DISK' AS quality_name, 2 AS position
UNION ALL
SELECT 'HD (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'Bluray-2160p' AS quality_name, 3 AS position
UNION ALL
SELECT 'HD (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'WEBDL-2160p' AS quality_name, 4 AS position
UNION ALL
SELECT 'HD (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'WEBRip-2160p' AS quality_name, 5 AS position
UNION ALL
SELECT 'HD (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'HDTV-2160p' AS quality_name, 6 AS position
UNION ALL
SELECT 'HD (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'Remux-2160p' AS quality_name, 7 AS position
UNION ALL
SELECT 'HD (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, 'Unwanted' AS quality_group_name, 'Remux-1080p' AS quality_name, 8 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)') = 5
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
      AND quality_name NOT IN ('Bluray-1080p', 'HDTV-1080p', 'WEBDL-1080p', 'WEBRip-1080p', 'Remux-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
        AND NOT (
          (quality_name = 'Bluray-1080p'
        AND position = 0)
      OR (quality_name = 'HDTV-1080p'
        AND position = 1)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 2)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 3)
      OR (quality_name = 'Remux-1080p'
        AND position = 4)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
  AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = 'HD (No Remux) - Best FR Team Multi Audio'
      AND quality_group_name = '4K (2160p-No Remux) - HD (1080p-No Remux)'
  ) = 0 AS ok
),
new_rows AS (
SELECT 'HD (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'Bluray-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT 'HD (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'HDTV-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT 'HD (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 2 AS position
UNION ALL
SELECT 'HD (No Remux) - Best FR Team Multi Audio' AS quality_profile_name, '4K (2160p-No Remux) - HD (1080p-No Remux)' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 3 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 497
