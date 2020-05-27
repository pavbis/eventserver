SET search_path TO public;

WITH months_diff as (
    SELECT concat(months_between("createdAt", now()), ' months')::varchar FROM events
)

UPDATE events SET "createdAt" = "createdAt" + (SELECT * FROM months_diff LIMIT 1)::interval;