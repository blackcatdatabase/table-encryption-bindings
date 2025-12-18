# encryption_bindings

Bindings assigning specific key wrappers to encrypted entity fields.

## Columns
| Column | Type | Null | Default | Description | Crypto |
| --- | --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |  |
| entity_table | VARCHAR(64) | NO |  | Table name containing encrypted data. |  |
| entity_pk | VARCHAR(64) | NO |  | Primary key value of the encrypted row. |  |
| field_name | VARCHAR(64) | YES |  | Encrypted column name; NULL = whole row binding. |  |
| field_name_norm | VARCHAR(64) | YES |  | Generated normalized field name (IFNULL(field_name, '')). |  |
| key_wrapper_id | BIGINT | NO |  | Assigned key wrapper (FK key_wrappers.id). |  |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_enc_bind | entity_table, entity_pk, field_name_norm |
| uq_enc_bind_raw | entity_table, entity_pk, field_name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_enc_bind_entity | entity_table,entity_pk,created_at | CREATE INDEX idx_enc_bind_entity ON encryption_bindings (entity_table, entity_pk, created_at) |
| uq_enc_bind | entity_table,entity_pk,field_name_norm | UNIQUE KEY uq_enc_bind (entity_table, entity_pk, field_name_norm) |
| uq_enc_bind_raw | entity_table,entity_pk,field_name | UNIQUE KEY uq_enc_bind_raw (entity_table, entity_pk, field_name) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_enc_bind_kw | key_wrapper_id | key_wrappers(id) | ON DELETE RESTRICT |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_enc_bind | entity_table, entity_pk, field_name_norm |
| uq_enc_bind_raw | entity_table, entity_pk, field_name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_enc_bind_entity | entity_table,entity_pk,created_at | CREATE INDEX IF NOT EXISTS idx_enc_bind_entity ON encryption_bindings (entity_table, entity_pk, created_at) |
| uq_enc_bind | entity_table,entity_pk,field_name_norm | CONSTRAINT uq_enc_bind UNIQUE (entity_table, entity_pk, field_name_norm) |
| uq_enc_bind_raw | entity_table,entity_pk,field_name | CONSTRAINT uq_enc_bind_raw UNIQUE (entity_table, entity_pk, field_name) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_enc_bind_kw | key_wrapper_id | key_wrappers(id) | ON DELETE RESTRICT |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_encryption_bindings | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_encryption_bindings | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
