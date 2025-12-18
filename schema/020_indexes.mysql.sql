-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  encryption_bindings

CREATE INDEX idx_enc_bind_entity ON encryption_bindings (entity_table, entity_pk, created_at);
