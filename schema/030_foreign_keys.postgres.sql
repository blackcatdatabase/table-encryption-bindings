-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  encryption_bindings
ALTER TABLE encryption_bindings ADD CONSTRAINT fk_enc_bind_kw FOREIGN KEY (key_wrapper_id) REFERENCES key_wrappers(id) ON DELETE RESTRICT;
