-- this once caused a segfault during development
SELECT zdb.score(ctid) > 1.0, count(*) FROM events WHERE events ==> 'beer' OR events ==> 'wine' GROUP BY 1 ORDER BY 1;