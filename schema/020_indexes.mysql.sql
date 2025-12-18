-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  encryption_bindings

CREATE INDEX idx_enc_bind_entity ON encryption_bindings (entity_table, entity_pk, created_at);
