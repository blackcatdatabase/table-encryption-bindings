-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  encryption_bindings

CREATE INDEX idx_enc_bind_entity ON encryption_bindings (entity_table, entity_pk, created_at);
