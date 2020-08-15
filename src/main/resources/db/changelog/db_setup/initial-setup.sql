CREATE SCHEMA IF NOT EXISTS template_schema;

SET search_path=template_schema;

CREATE TABLE IF NOT EXISTS test (
    id                       BIGSERIAL NOT NULL,
    text_value               text NOT NULL,
    CONSTRAINT pk_test_id PRIMARY KEY (id)
);

COMMENT ON COLUMN test.id
IS 'Primary key.';
COMMENT ON COLUMN test.text_value
IS 'Text column.';
