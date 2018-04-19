BEGIN TRANSACTION;
INSERT INTO "model" VALUES(1,'Original Google Data','csv',0,NULL);
INSERT INTO "model" VALUES(2,'Original Twitter Data','csv',0,NULL);
INSERT INTO "model" VALUES(3,'Google','google',1,'infer_ILI_rate_google_v4,7');
INSERT INTO "model" VALUES(4,'Twitter','twitter',0,'infer_ILI_rate_twitter_v3,7');
INSERT INTO "model" VALUES(5,'RCGP Ground Truth','csv',0,NULL);
INSERT INTO "model" VALUES(6,'Google Averaged','google',0,'infer_ILI_rate_google_v4,1');
COMMIT;
