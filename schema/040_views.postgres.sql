-- Auto-generated from schema-views-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  encryption_bindings

-- Contract view for [encryption_bindings]
CREATE OR REPLACE VIEW vw_encryption_bindings AS
SELECT
  id,
  entity_table,
  entity_pk,
  field_name,
  key_wrapper_id,
  created_at
FROM encryption_bindings;
