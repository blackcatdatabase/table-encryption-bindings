-- Auto-generated from schema-map-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  encryption_bindings

ALTER TABLE encryption_bindings ADD CONSTRAINT fk_enc_bind_kw FOREIGN KEY (key_wrapper_id) REFERENCES key_wrappers(id) ON DELETE RESTRICT;
