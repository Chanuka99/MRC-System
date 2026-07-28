-- ============================================================
-- 00035: Drop daily_rate from vehicles
-- Redundant column — always = rate_tiers[0].rate_per_day
-- ============================================================

ALTER TABLE vehicles DROP COLUMN IF EXISTS daily_rate;
