BEGIN TRANSACTION;
INSERT INTO "model" VALUES(1,'Dummy Google Data','google',1,'nonexistent_function,1');
INSERT INTO "model_score" VALUES('2018-01-01','e',0.0,1);
INSERT INTO "model_score" VALUES('2018-01-02','e',0.2,1);
INSERT INTO "model_score" VALUES('2018-01-03','e',0.4,1);
INSERT INTO "model_score" VALUES('2018-01-04','e',0.6,1);
INSERT INTO "model_score" VALUES('2018-01-05','e',0.8,1);
INSERT INTO "model_score" VALUES('2018-01-06','e',0.9,1);
INSERT INTO "model_score" VALUES('2018-01-07','e',0.7,1);
INSERT INTO "model_score" VALUES('2018-01-08','e',0.5,1);
INSERT INTO "model_score" VALUES('2018-01-09','e',0.3,1);
INSERT INTO "model_score" VALUES('2018-01-10','e',0.1,1);
COMMIT;
