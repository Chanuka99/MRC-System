UPDATE vehicles
SET monthly_rate = (
  SELECT rate_per_day * 30
  FROM rate_tiers
  WHERE vehicle_id = vehicles.id AND days_from = 22
  LIMIT 1
)
WHERE monthly_rate = 0
  AND EXISTS (
    SELECT 1 FROM rate_tiers
    WHERE vehicle_id = vehicles.id AND days_from = 22
  );