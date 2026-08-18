-- Task 7: employee locations excluding CEO and CFO
CREATE VIEW staff_locations_view AS
SELECT staff.staff_id,
       staff.first_name,
       staff.last_name,
       staff.location
FROM staff
WHERE "position" NOT IN ('CEO', 'CFO');

-- Task 8: product information materialized view
CREATE MATERIALIZED VIEW "product_info_m-view" AS
SELECT product.product_name,
       product.description,
       product_type.product_category
FROM product
JOIN product_type
  ON product.product_type_id = product_type.product_type_id;

REFRESH MATERIALIZED VIEW "product_info_m-view";
