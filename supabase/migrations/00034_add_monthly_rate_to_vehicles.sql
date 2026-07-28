-- ============================================================
-- 00034: Add monthly_rate to vehicles for exact rate storage
-- Prevents rounding loss from reverse-calculating tiers
-- ============================================================

ALTER TABLE vehicles ADD COLUMN IF NOT EXISTS monthly_rate NUMERIC(12,2) DEFAULT 0;
