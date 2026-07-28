-- ============================================================
-- 00032: Move KM charge fields from rate_tiers to vehicles
-- Customer KM policy is vehicle-level, not per-tier
-- ============================================================

-- Revert rate_tiers KM columns added in 00031
ALTER TABLE rate_tiers DROP COLUMN IF EXISTS km_limit;
ALTER TABLE rate_tiers DROP COLUMN IF EXISTS extra_km_rate;

-- Add customer KM fields to vehicles table
ALTER TABLE vehicles ADD COLUMN IF NOT EXISTS customer_km_limit INTEGER DEFAULT 0;
ALTER TABLE vehicles ADD COLUMN IF NOT EXISTS customer_extra_km_rate NUMERIC(12,2) DEFAULT 0;
