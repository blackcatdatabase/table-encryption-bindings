-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  encryption_bindings

CREATE TABLE IF NOT EXISTS encryption_bindings (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  entity_table VARCHAR(64) NOT NULL,
  entity_pk VARCHAR(64) NOT NULL,
  field_name VARCHAR(64) NULL,
  field_name_norm VARCHAR(64) GENERATED ALWAYS AS (IFNULL(field_name,'')) STORED,
  key_wrapper_id BIGINT UNSIGNED NOT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  UNIQUE KEY uq_enc_bind (entity_table, entity_pk, field_name_norm),
  UNIQUE KEY uq_enc_bind_raw (entity_table, entity_pk, field_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
