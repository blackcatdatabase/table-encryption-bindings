-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  encryption_bindings

CREATE INDEX idx_enc_bind_entity ON encryption_bindings (entity_table, entity_pk, created_at);
