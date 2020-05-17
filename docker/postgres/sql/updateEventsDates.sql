CREATE OR REPLACE FUNCTION months_between(time_start timestamptz, time_end timestamptz) RETURNS INTEGER
    IMMUTABLE
    STRICT
    LANGUAGE SQL
as
$$
SELECT (12 * extract('years' from a.i) + extract('months' from a.i))::integer
FROM (values (justify_interval($2 - $1))) as a (i)
$$;

ALTER FUNCTION months_between(timestamptz, timestamptz) OWNER TO root;

WITH months_diff as (
    SELECT concat(months_between("createdAt", now()), ' months')::varchar FROM events
)

UPDATE events SET "createdAt" = "createdAt" + (SELECT * FROM months_diff LIMIT 1)::interval;
