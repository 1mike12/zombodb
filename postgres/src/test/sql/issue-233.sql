CREATE ROLE issue_233 WITH CREATEROLE;  -- WITH CREATEROLE so we can drop it too

SET ROLE issue_233;
CREATE TABLE issue_233 AS SELECT oid::bigint AS id, relname::text AS relname FROM pg_class LIMIT 10; -- just need some data from somewhere
CREATE INDEX idxissue_233 ON issue_233 USING zombodb (zdb('issue_233', ctid), zdb(issue_233)) WITH (url='localhost:9200/');
DROP TABLE issue_233 CASCADE;