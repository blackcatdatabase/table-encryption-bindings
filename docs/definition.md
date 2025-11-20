<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – encryption_bindings

Bindings assigning specific key wrappers to encrypted entity fields.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| entity_table | VARCHAR(64) | NO | — | Table name containing encrypted data. |  |
| entity_pk | VARCHAR(64) | NO | — | Primary key value of the encrypted row. |  |
| field_name | VARCHAR(64) | YES | — | Encrypted column name; NULL = whole row binding. |  |
| field_name_norm | VARCHAR(64) | — | — |  |  |
| key_wrapper_id | BIGINT | NO | — | Assigned key wrapper (FK key_wrappers.id). |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |