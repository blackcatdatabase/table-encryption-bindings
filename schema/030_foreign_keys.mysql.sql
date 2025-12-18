-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  encryption_bindings

ALTER TABLE encryption_bindings ADD CONSTRAINT fk_enc_bind_kw FOREIGN KEY (key_wrapper_id) REFERENCES key_wrappers(id) ON DELETE RESTRICT;
