-- ============================================================
-- 00033: Remove km_limit columns from vehicles
-- KM limit is fixed at 3000/month, no need to store per vehicle
-- ============================================================

ALTER TABLE vehicles DROP COLUMN IF EXISTS supplier_km_limit;
ALTER TABLE vehicles DROP COLUMN IF EXISTS customer_km_limit;
