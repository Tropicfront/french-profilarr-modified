-- @operation: export
-- @entity: batch
-- @name: Fix Movie Format
-- @exportedAt: 2026-05-18T22:20:30.803Z
-- @opIds: 164

-- --- BEGIN op 164 ( update radarr_naming "Radarr" )
update "radarr_naming" set "movie_format" = '{Movie CleanTitle} {(Release Year)} [tmdbid-{TmdbId}] - {Edition Tags }{[Custom Formats]}{[Quality Full]}{[MediaInfo 3D]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[Mediainfo VideoCodec]}{-Release Group}' where "name" = 'Radarr' and "movie_format" = '{Movie CleanTitle} {(Release Year)} [tmdbid-{TmdbId}] - {Edition Tags }{[Custom Formats]}{[Quality Full]}{[MediaInfo 3D]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[Mediainfo VideoCodec]}{-Release Group}{Movie CleanTitle}';
-- --- END op 164
