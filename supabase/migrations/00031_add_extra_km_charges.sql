-- ============================================================
-- 00031: Extra KM Charge System
-- Adds supplier-level and customer-tier km charge fields
-- ============================================================

-- Supplier km fields on vehicles
ALTER TABLE vehicles ADD COLUMN IF NOT EXISTS supplier_km_limit INTEGER DEFAULT 0;
ALTER TABLE vehicles ADD COLUMN IF NOT EXISTS supplier_extra_km_rate NUMERIC(12,2) DEFAULT 0;

-- Customer km fields on rate_tiers
ALTER TABLE rate_tiers ADD COLUMN IF NOT EXISTS km_limit INTEGER DEFAULT 0;
ALTER TABLE rate_tiers ADD COLUMN IF NOT EXISTS extra_km_rate NUMERIC(12,2) DEFAULT 0;
