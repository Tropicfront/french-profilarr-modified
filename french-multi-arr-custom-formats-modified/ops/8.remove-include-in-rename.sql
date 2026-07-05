-- @operation: export
-- @entity: batch
-- @name: Remove Include in rename
-- @exportedAt: 2026-05-18T22:21:41.333Z
-- @opIds: 166, 167

-- --- BEGIN op 166 ( update custom_format "VFQ (No VFF)" )
update "custom_formats" set "include_in_rename" = 0 where "name" = 'VFQ (No VFF)' and "include_in_rename" = 1;
-- --- END op 166

-- --- BEGIN op 167 ( update custom_format "VFF (no VFQ)" )
update "custom_formats" set "include_in_rename" = 0 where "name" = 'VFF (no VFQ)' and "include_in_rename" = 1;
-- --- END op 167
