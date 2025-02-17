BEGIN;

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Billie V3.0 (Not shown)',
        'CMODEL_BILLIE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (72)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Billie V3.1',
        'CMODEL_BILLIE_POSABLE',
        '3.1.0',
        False
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (155,51)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Billie V3.0 (Not shown)',
        'CMODEL_BILLIE_POSABLE (NOT_SHOWN)',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (50)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Dizzy V3.0 (Not shown)',
        'CMODEL_DIZZY',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (60)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Dizzy V3.1',
        'CMODEL_DIZZY_POSABLE',
        '3.1.0',
        False
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (154,63)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Duke V3.0 (Not shown)',
        'CMODEL_DUKE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (36)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Duke cV3.0 (Not shown)',
        'CMODEL_DUKE_POSABLE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (38)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Duke cV3.1 (Not shown)',
        'CMODEL_DUKE_POSABLE',
        '3.1.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (82,83,143)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Eartha V3.0 (Not shown)',
        'CMODEL_EARTHA',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (56)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Eartha V3.1',
        'CMODEL_EARTHA_POSABLE',
        '3.1.0',
        False
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (153,59)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Eddie V3.1 (Not shown)',
        'CMODEL_EDDIE_POSABLE',
        '3.1.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (142,152)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Eddie V3.2',
        'CMODEL_EDDIE_POSABLE',
        '3.2.0',
        False
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (164)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Ella V3.0 (Not shown)',
        'CMODEL_ELLA',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (44)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Ella cV3.0 (Not shown)',
        'CMODEL_ELLA_POSABLE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (46)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Ella cV3.1',
        'CMODEL_ELLA_POSABLE',
        '3.1.0',
        False
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (151,47)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Fats V3.0 (Not shown)',
        'CMODEL_FATS',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (74)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Fats V3.1 (Not shown)',
        'CMODEL_FATS_POSABLE',
        '3.1.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (91,150)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Fats V3.2',
        'CMODEL_FATS_POSABLE',
        '3.2.0',
        False
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (114)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Glenn V3.0 (Not shown)',
        'CMODEL_GLENN',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (6)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Glenn cV3.1',
        'CMODEL_GLENN_POSABLE',
        '3.1.0',
        False
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (149,33)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Jeduk cV3.1',
        'CMODEL_JEDUK_POSABLE',
        '3.1.0',
        False
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (148,113)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Louis V3.0 (Not shown)',
        'CMODEL_LOUIS',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (68)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Louis V3.1',
        'CMODEL_LOUIS_POSABLE',
        '3.1.0',
        False
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (147,71)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Roberta V3.0 (Not shown)',
        'CMODEL_ROBERTA',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (64)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Roberta cV3.1',
        'CMODEL_ROBERTA_POSABLE',
        '3.1.0',
        False
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (146,67)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Thelonious V3.0 (Not shown)',
        'CMODEL_THELONIOUS',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (52)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Thelonious cV3.0 (Not shown)',
        'CMODEL_THELONIOUS_POSABLE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (54,145)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Thelonious cV3.1',
        'CMODEL_THELONIOUS_POSABLE',
        '3.1.0',
        False
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (55)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Yoon-sun cV3.0 (Not shown)',
        'CMODEL_YOONSUN',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (115,144)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Yoon-sun cV3.1',
        'CMODEL_YOONSUN_POSABLE',
        '3.1.0',
        False
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (116)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Billie Right Hand V3.0 (Not shown)',
        'MODEL_BILLIE_HAND_POSABLE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (123)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Dizzy Right Hand V3.0 (Not shown)',
        'MODEL_DIZZY_HAND_POSABLE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (124)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Duke Right Hand V3.0 (Not shown)',
        'MODEL_DUKE_HAND_POSABLE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (125)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Eartha Right Hand V3.0 (Not shown)',
        'MODEL_EARTHA_HAND_POSABLE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (126)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Ella V3.1 (Breast Imaging)',
        'MODEL_ELLA_BREAST_COIL',
        '3.1.0',
        False
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (105)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Ella Right Hand V3.0 (Not shown)',
        'MODEL_ELLA_HAND_POSABLE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (127)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Fats Right Hand V3.2 (Not shown)',
        'MODEL_FATS_HAND_POSABLE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (128)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Glenn Right Hand V3.0 (Not shown)',
        'MODEL_GLENN_HAND_POSABLE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (129)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Jeduk Right Hand V3.1 (Not shown)',
        'MODEL_JEDUK_HAND_POSABLE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (130)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Louis Right Hand V3.0 (Not shown)',
        'MODEL_LOUIS_HAND_POSABLE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (131)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Roberta Right Hand V3.0 (Not shown)',
        'MODEL_ROBERTA_HAND_POSABLE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (132)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Thelonious Right Hand V3.0 (Not shown)',
        'MODEL_THELONIOUS_HAND_POSABLE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (133)
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

WITH plan_id AS (
    SELECT pp.pricing_plan_id
    FROM resource_tracker_pricing_plans pp
    WHERE pp.pricing_plan_key = 'vip-vip-v3'
      AND pp.product_name = 's4l'
    LIMIT 1
),
new_licensed_item AS (
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
    SELECT
        'VIP_MODEL',
        plan_id.pricing_plan_id,
        's4l',
        now(),
        now(),
        'Yoon-sun Right Hand V3.1 (Not shown)',
        'MODEL_YOONSUN_HAND_POSABLE',
        '3.0.0',
        True
    FROM plan_id
    RETURNING licensed_item_id
),
matching_resources AS (
    SELECT 
      licensed_resource_id
    FROM licensed_resources
    WHERE CAST(licensed_resource_data->'source'->>'id' AS INTEGER) IN (134)
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
