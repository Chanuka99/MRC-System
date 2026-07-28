-- ============================================================
-- 00036: Add pickup/return time fields to rentals
-- ============================================================

ALTER TABLE rentals ADD COLUMN IF NOT EXISTS start_time TEXT;
ALTER TABLE rentals ADD COLUMN IF NOT EXISTS end_time TEXT;
