-- @operation: export
-- @entity: batch
-- @name: Fixed Standard Episode Format
-- @exportedAt: 2026-05-18T22:01:02.064Z
-- @opIds: 502

-- --- BEGIN op 502 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "standard_episode_format" = '{Series TitleYear} - S{season:00}E{episode:00} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}' where "name" = 'Sonarr' and "standard_episode_format" = '{Series TitleYear} - S{season:00}E{episode:00} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}{Series CleanTitle}';
-- --- END op 502
