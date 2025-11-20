-- Auto-generated from schema-views-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  encryption_bindings
-- Contract view for [encryption_bindings]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_encryption_bindings AS
SELECT
  id,
  entity_table,
  entity_pk,
  field_name,
  key_wrapper_id,
  created_at
FROM encryption_bindings;
