-- @operation: export
-- @entity: batch
-- @name: Update Include in rename
-- @exportedAt: 2026-05-18T21:50:11.760Z
-- @opIds: 312, 313, 314, 315, 316, 317

-- --- BEGIN op 312 ( update custom_format "VOSTFR" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'VOSTFR' and "include_in_rename" = 0;
-- --- END op 312

-- --- BEGIN op 313 ( update custom_format "VOSTEN" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'VOSTEN' and "include_in_rename" = 0;
-- --- END op 313

-- --- BEGIN op 314 ( update custom_format "VFF (no VFQ)" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'VFF (no VFQ)' and "include_in_rename" = 0;
-- --- END op 314

-- --- BEGIN op 315 ( update custom_format "VFQ (No VFF)" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'VFQ (No VFF)' and "include_in_rename" = 0;
-- --- END op 315

-- --- BEGIN op 316 ( update custom_format "VF2-VFI" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'VF2-VFI' and "include_in_rename" = 0;
-- --- END op 316

-- --- BEGIN op 317 ( update custom_format "MULTi Audio" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'MULTi Audio' and "include_in_rename" = 0;
-- --- END op 317
