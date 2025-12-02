-- Auto-generated from schema-map-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  encryption_bindings

CREATE INDEX IF NOT EXISTS idx_enc_bind_entity ON encryption_bindings (entity_table, entity_pk, created_at);
