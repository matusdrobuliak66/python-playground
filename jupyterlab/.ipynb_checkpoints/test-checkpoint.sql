BEGIN;

WITH new_licensed_item AS (
    INSERT INTO licensed_items
        (licensed_resource_type, 
         pricing_plan_id, 
         product_name, 
         created, 
         modified,
         display_name, 
         key, 
         version, 
         is_hidden_on_market
        )
    VALUES
        (
            'VIP_MODEL',
            666,            -- pricing_plan_id
            's4l',                        -- product
            now(),
            now(),
            '{'Billie V1.0 (Not shown)'}',             -- Licensed Item Display Name
            'MODEL_BILLIE_POSABLE',              -- Licensed Item KEY
            '1.0.0',          -- Licensed Item VERSION
            True         -- is_hidden_in_market
        )
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (10)
),
insert_relationships AS (
    INSERT INTO licensed_item_to_resource
        (licensed_item_id, licensed_resource_id, created, modified)
    SELECT
        new_licensed_item.licensed_item_id,
        matching_resources.licensed_resource_id,
        now(),
        now()
    FROM new_licensed_item
    CROSS JOIN matching_resources
    RETURNING licensed_item_id, licensed_resource_id
)

SELECT * FROM insert_relationships;

COMMIT;

-------------------------------------------------------------------------------
BEGIN;

WITH new_licensed_item AS (
    INSERT INTO licensed_items
        (licensed_resource_type, 
         pricing_plan_id, 
         product_name, 
         created, 
         modified,
         display_name, 
         key, 
         version, 
         is_hidden_on_market
        )
    VALUES
        (
            'VIP_MODEL',
            666,            -- pricing_plan_id
            's4l',                        -- product
            now(),
            now(),
            '{'Charlie V1.0'}',             -- Licensed Item Display Name
            'MODEL_CHARLIE',              -- Licensed Item KEY
            '1.0.0',          -- Licensed Item VERSION
            False         -- is_hidden_in_market
        )
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (16)
),
insert_relationships AS (
    INSERT INTO licensed_item_to_resource
        (licensed_item_id, licensed_resource_id, created, modified)
    SELECT
        new_licensed_item.licensed_item_id,
        matching_resources.licensed_resource_id,
        now(),
        now()
    FROM new_licensed_item
    CROSS JOIN matching_resources
    RETURNING licensed_item_id, licensed_resource_id
)

SELECT * FROM insert_relationships;

COMMIT;

-------------------------------------------------------------------------------
BEGIN;

WITH new_licensed_item AS (
    INSERT INTO licensed_items
        (licensed_resource_type, 
         pricing_plan_id, 
         product_name, 
         created, 
         modified,
         display_name, 
         key, 
         version, 
         is_hidden_on_market
        )
    VALUES
        (
            'VIP_MODEL',
            666,            -- pricing_plan_id
            's4l',                        -- product
            now(),
            now(),
            '{'Dizzy V1.0 (Not shown)'}',             -- Licensed Item Display Name
            'MODEL_DIZZY_POSABLE',              -- Licensed Item KEY
            '1.0.0',          -- Licensed Item VERSION
            True         -- is_hidden_in_market
        )
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (13)
),
insert_relationships AS (
    INSERT INTO licensed_item_to_resource
        (licensed_item_id, licensed_resource_id, created, modified)
    SELECT
        new_licensed_item.licensed_item_id,
        matching_resources.licensed_resource_id,
        now(),
        now()
    FROM new_licensed_item
    CROSS JOIN matching_resources
    RETURNING licensed_item_id, licensed_resource_id
)

SELECT * FROM insert_relationships;

COMMIT;

-------------------------------------------------------------------------------
BEGIN;

WITH new_licensed_item AS (
    INSERT INTO licensed_items
        (licensed_resource_type, 
         pricing_plan_id, 
         product_name, 
         created, 
         modified,
         display_name, 
         key, 
         version, 
         is_hidden_on_market
        )
    VALUES
        (
            'VIP_MODEL',
            666,            -- pricing_plan_id
            's4l',                        -- product
            now(),
            now(),
            '{'Duke V1.0 (Not shown)'}',             -- Licensed Item Display Name
            'MODEL_DUKE_POSABLE',              -- Licensed Item KEY
            '1.0.0',          -- Licensed Item VERSION
            True         -- is_hidden_in_market
        )
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (8)
),
insert_relationships AS (
    INSERT INTO licensed_item_to_resource
        (licensed_item_id, licensed_resource_id, created, modified)
    SELECT
        new_licensed_item.licensed_item_id,
        matching_resources.licensed_resource_id,
        now(),
        now()
    FROM new_licensed_item
    CROSS JOIN matching_resources
    RETURNING licensed_item_id, licensed_resource_id
)

SELECT * FROM insert_relationships;

COMMIT;

-------------------------------------------------------------------------------
BEGIN;

WITH new_licensed_item AS (
    INSERT INTO licensed_items
        (licensed_resource_type, 
         pricing_plan_id, 
         product_name, 
         created, 
         modified,
         display_name, 
         key, 
         version, 
         is_hidden_on_market
        )
    VALUES
        (
            'VIP_MODEL',
            666,            -- pricing_plan_id
            's4l',                        -- product
            now(),
            now(),
            '{'Eartha V1.0 (Not shown)'}',             -- Licensed Item Display Name
            'MODEL_EARTHA_POSABLE',              -- Licensed Item KEY
            '1.0.0',          -- Licensed Item VERSION
            True         -- is_hidden_in_market
        )
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (12)
),
insert_relationships AS (
    INSERT INTO licensed_item_to_resource
        (licensed_item_id, licensed_resource_id, created, modified)
    SELECT
        new_licensed_item.licensed_item_id,
        matching_resources.licensed_resource_id,
        now(),
        now()
    FROM new_licensed_item
    CROSS JOIN matching_resources
    RETURNING licensed_item_id, licensed_resource_id
)

SELECT * FROM insert_relationships;

COMMIT;

-------------------------------------------------------------------------------
BEGIN;

WITH new_licensed_item AS (
    INSERT INTO licensed_items
        (licensed_resource_type, 
         pricing_plan_id, 
         product_name, 
         created, 
         modified,
         display_name, 
         key, 
         version, 
         is_hidden_on_market
        )
    VALUES
        (
            'VIP_MODEL',
            666,            -- pricing_plan_id
            's4l',                        -- product
            now(),
            now(),
            '{'Ella V1.0 (Not shown)'}',             -- Licensed Item Display Name
            'MODEL_ELLA_POSABLE',              -- Licensed Item KEY
            '1.0.0',          -- Licensed Item VERSION
            True         -- is_hidden_in_market
        )
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (9)
),
insert_relationships AS (
    INSERT INTO licensed_item_to_resource
        (licensed_item_id, licensed_resource_id, created, modified)
    SELECT
        new_licensed_item.licensed_item_id,
        matching_resources.licensed_resource_id,
        now(),
        now()
    FROM new_licensed_item
    CROSS JOIN matching_resources
    RETURNING licensed_item_id, licensed_resource_id
)

SELECT * FROM insert_relationships;

COMMIT;

-------------------------------------------------------------------------------
BEGIN;

WITH new_licensed_item AS (
    INSERT INTO licensed_items
        (licensed_resource_type, 
         pricing_plan_id, 
         product_name, 
         created, 
         modified,
         display_name, 
         key, 
         version, 
         is_hidden_on_market
        )
    VALUES
        (
            'VIP_MODEL',
            666,            -- pricing_plan_id
            's4l',                        -- product
            now(),
            now(),
            '{'Fats V1.0 (Not shown)'}',             -- Licensed Item Display Name
            'MODEL_FATS',              -- Licensed Item KEY
            '1.0.0',          -- Licensed Item VERSION
            True         -- is_hidden_in_market
        )
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (7)
),
insert_relationships AS (
    INSERT INTO licensed_item_to_resource
        (licensed_item_id, licensed_resource_id, created, modified)
    SELECT
        new_licensed_item.licensed_item_id,
        matching_resources.licensed_resource_id,
        now(),
        now()
    FROM new_licensed_item
    CROSS JOIN matching_resources
    RETURNING licensed_item_id, licensed_resource_id
)

SELECT * FROM insert_relationships;

COMMIT;

-------------------------------------------------------------------------------
BEGIN;

WITH new_licensed_item AS (
    INSERT INTO licensed_items
        (licensed_resource_type, 
         pricing_plan_id, 
         product_name, 
         created, 
         modified,
         display_name, 
         key, 
         version, 
         is_hidden_on_market
        )
    VALUES
        (
            'VIP_MODEL',
            666,            -- pricing_plan_id
            's4l',                        -- product
            now(),
            now(),
            '{'Louis V1.0 (Not shown)'}',             -- Licensed Item Display Name
            'MODEL_LOUIS_POSABLE',              -- Licensed Item KEY
            '1.0.0',          -- Licensed Item VERSION
            True         -- is_hidden_in_market
        )
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (15)
),
insert_relationships AS (
    INSERT INTO licensed_item_to_resource
        (licensed_item_id, licensed_resource_id, created, modified)
    SELECT
        new_licensed_item.licensed_item_id,
        matching_resources.licensed_resource_id,
        now(),
        now()
    FROM new_licensed_item
    CROSS JOIN matching_resources
    RETURNING licensed_item_id, licensed_resource_id
)

SELECT * FROM insert_relationships;

COMMIT;

-------------------------------------------------------------------------------
BEGIN;

WITH new_licensed_item AS (
    INSERT INTO licensed_items
        (licensed_resource_type, 
         pricing_plan_id, 
         product_name, 
         created, 
         modified,
         display_name, 
         key, 
         version, 
         is_hidden_on_market
        )
    VALUES
        (
            'VIP_MODEL',
            666,            -- pricing_plan_id
            's4l',                        -- product
            now(),
            now(),
            '{'Nina V1.0'}',             -- Licensed Item Display Name
            'MODEL_NINA_POSABLE',              -- Licensed Item KEY
            '1.0.0',          -- Licensed Item VERSION
            False         -- is_hidden_in_market
        )
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (17)
),
insert_relationships AS (
    INSERT INTO licensed_item_to_resource
        (licensed_item_id, licensed_resource_id, created, modified)
    SELECT
        new_licensed_item.licensed_item_id,
        matching_resources.licensed_resource_id,
        now(),
        now()
    FROM new_licensed_item
    CROSS JOIN matching_resources
    RETURNING licensed_item_id, licensed_resource_id
)

SELECT * FROM insert_relationships;

COMMIT;

-------------------------------------------------------------------------------
BEGIN;

WITH new_licensed_item AS (
    INSERT INTO licensed_items
        (licensed_resource_type, 
         pricing_plan_id, 
         product_name, 
         created, 
         modified,
         display_name, 
         key, 
         version, 
         is_hidden_on_market
        )
    VALUES
        (
            'VIP_MODEL',
            666,            -- pricing_plan_id
            's4l',                        -- product
            now(),
            now(),
            '{'Pregnant Woman'}',             -- Licensed Item Display Name
            'MODEL_PREGNANT_WOMAN',              -- Licensed Item KEY
            '1.0.0',          -- Licensed Item VERSION
            False         -- is_hidden_in_market
        )
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (18,19,20)
),
insert_relationships AS (
    INSERT INTO licensed_item_to_resource
        (licensed_item_id, licensed_resource_id, created, modified)
    SELECT
        new_licensed_item.licensed_item_id,
        matching_resources.licensed_resource_id,
        now(),
        now()
    FROM new_licensed_item
    CROSS JOIN matching_resources
    RETURNING licensed_item_id, licensed_resource_id
)

SELECT * FROM insert_relationships;

COMMIT;

-------------------------------------------------------------------------------
BEGIN;

WITH new_licensed_item AS (
    INSERT INTO licensed_items
        (licensed_resource_type, 
         pricing_plan_id, 
         product_name, 
         created, 
         modified,
         display_name, 
         key, 
         version, 
         is_hidden_on_market
        )
    VALUES
        (
            'VIP_MODEL',
            666,            -- pricing_plan_id
            's4l',                        -- product
            now(),
            now(),
            '{'Roberta V1.0 (Not shown)'}',             -- Licensed Item Display Name
            'MODEL_ROBERTA_POSABLE',              -- Licensed Item KEY
            '1.0.0',          -- Licensed Item VERSION
            True         -- is_hidden_in_market
        )
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (14)
),
insert_relationships AS (
    INSERT INTO licensed_item_to_resource
        (licensed_item_id, licensed_resource_id, created, modified)
    SELECT
        new_licensed_item.licensed_item_id,
        matching_resources.licensed_resource_id,
        now(),
        now()
    FROM new_licensed_item
    CROSS JOIN matching_resources
    RETURNING licensed_item_id, licensed_resource_id
)

SELECT * FROM insert_relationships;

COMMIT;

-------------------------------------------------------------------------------
BEGIN;

WITH new_licensed_item AS (
    INSERT INTO licensed_items
        (licensed_resource_type, 
         pricing_plan_id, 
         product_name, 
         created, 
         modified,
         display_name, 
         key, 
         version, 
         is_hidden_on_market
        )
    VALUES
        (
            'VIP_MODEL',
            666,            -- pricing_plan_id
            's4l',                        -- product
            now(),
            now(),
            '{'Thelonious V1.0 (Not shown)'}',             -- Licensed Item Display Name
            'MODEL_THELONIOUS_POSABLE',              -- Licensed Item KEY
            '1.0.0',          -- Licensed Item VERSION
            True         -- is_hidden_in_market
        )
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (11)
),
insert_relationships AS (
    INSERT INTO licensed_item_to_resource
        (licensed_item_id, licensed_resource_id, created, modified)
    SELECT
        new_licensed_item.licensed_item_id,
        matching_resources.licensed_resource_id,
        now(),
        now()
    FROM new_licensed_item
    CROSS JOIN matching_resources
    RETURNING licensed_item_id, licensed_resource_id
)

SELECT * FROM insert_relationships;

COMMIT;

-------------------------------------------------------------------------------
