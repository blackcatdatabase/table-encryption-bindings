-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  encryption_bindings
CREATE INDEX IF NOT EXISTS idx_enc_bind_entity ON encryption_bindings (entity_table, entity_pk, created_at);
