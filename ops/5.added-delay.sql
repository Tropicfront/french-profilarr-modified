-- @operation: export
-- @entity: batch
-- @name: Added Delay
-- @exportedAt: 2026-05-18T22:00:45.093Z
-- @opIds: 501

-- --- BEGIN op 501 ( create delay_profile "Standard" )
insert into "delay_profiles" ("name", "preferred_protocol", "usenet_delay", "torrent_delay", "bypass_if_highest_quality", "bypass_if_above_custom_format_score", "minimum_custom_format_score") values ('Standard', 'prefer_torrent', 0, 0, 0, 0, NULL);
-- --- END op 501
