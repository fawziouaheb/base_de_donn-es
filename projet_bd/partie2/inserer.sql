INSERT INTO personne VALUES ('22012463','mimouni','nadir',TO_DATE('2002-01-12','YYYY-MM-DD'));
INSERT INTO personne VALUES ('82567136','ouaheb','fawzi',TO_DATE('2001-01-08','YYYY-MM-DD'));
INSERT INTO personne VALUES ('98962377','le','leo',TO_DATE('1970-10-04','YYYY-MM-DD'));
INSERT INTO personne VALUES ('23651457','jean','lucas',TO_DATE('1980-07-14','YYYY-MM-DD'));
INSERT INTO personne VALUES ('63321455','borge','jim',TO_DATE('1984-05-07','YYYY-MM-DD'));
INSERT INTO personne VALUES ('74563215','la','lea',TO_DATE('1978-08-24','YYYY-MM-DD'));
INSERT INTO personne VALUES ('97724123','carton','tom',TO_DATE('2004-04-30','YYYY-MM-DD'));
INSERT INTO personne VALUES ('62547413','hom','john',TO_DATE('1990-08-20','YYYY-MM-DD'));
INSERT INTO personne VALUES ('73647136','valere','marie',TO_DATE('1993-02-06','YYYY-MM-DD'));



INSERT INTO centre_de_reparation VALUES ('00001','froissy');
INSERT INTO centre_de_reparation VALUES ('00002','beauvais');
INSERT INTO centre_de_reparation VALUES ('00003','amiens');



INSERT INTO techniciens VALUES ('T1','177023523800522','bus et metro','22012463','00002');
INSERT INTO techniciens VALUES ('T2','154054569700633','metro','74563215','00001');
INSERT INTO techniciens VALUES ('T3','162014668712331','bus','97724123','00003');


INSERT INTO depot VALUES ('DEP6','Amiens centre');
INSERT INTO depot VALUES ('DEP12','Amiens sud');

INSERT INTO vehicule VALUES('VH1');
INSERT INTO vehicule VALUES('VH2');
INSERT INTO vehicule VALUES('VH3');
INSERT INTO vehicule VALUES('VH4');
INSERT INTO vehicule VALUES('VH5');
INSERT INTO vehicule VALUES ('VH6');


INSERT INTO bus VALUES 	('41','BY-535-ZR','Tector 6','VH1','DEP6');
INSERT INTO bus VALUES ('40','LO-641-GT','cursor8','VH2','DEP12');
INSERT INTO bus VALUES ('42','DG-094-RN','cursor 9','VH3','DEP6');
INSERT INTO bus VALUES ('43','WZ-345-TF','cursor 7','VH4','DEP12');

INSERT INTO metro VALUES ('M1','VH5');
INSERT INTO metro VALUES ('M2','VH6');



INSERT INTO chauffeur VALUES ('C1','159239137492341','bus',TO_DATE('2003/02/22','YYYY/MM/DD'),63321455,'41');
INSERT INTO chauffeur VALUES ('C2','130745729283923','bus',TO_DATE('2012/07/07','YYYY/MM/DD'),62547413,'42');
INSERT INTO chauffeur VALUES ('C3','146327461379612','bus',TO_DATE('2015/05/18','YYYY/MM/DD'),82567136,'43');
INSERT INTO chauffeur VALUES ('C4','123132147831478','bus',TO_DATE('2010/04/27','YYYY/MM/DD'),74563215,'40');

INSERT INTO datechauff VALUES ('DA1',TO_Date('2021-11-01 08:00','YYYY-MM-DD HH24:MI'));
INSERT INTO datechauff VALUES ('DA2',TO_Date('2021-11-03 13:00','YYYY-MM-DD HH24:MI'));
INSERT INTO datechauff VALUES ('DA3',TO_Date('2022-01-20 08:00','YYYY-MM-DD HH24:MI'));
INSERT INTO datechauff VALUES ('DA4',TO_Date('2022-01-12 08:00','YYYY-MM-DD HH24:MI'));

INSERT INTO conduit VALUES ('C1','41','DA1',TO_Date('2021-11-01 19:00','YYYY-MM-DD HH24:MI'));
INSERT INTO conduit VALUES ('C2','42','DA2',TO_Date('2021-11-03 19:30','YYYY-MM-DD HH24:MI'));
INSERT INTO conduit VALUES ('C3','43','DA3',TO_Date('2022-01-21 03:00','YYYY-MM-DD HH24:MI'));
INSERT INTO conduit VALUES ('C4','40','DA4',TO_Date('2022-01-12 15:00','YYYY-MM-DD HH24:MI'));

INSERT INTO client VALUES ('CL1','cb','97724123');
INSERT INTO client VALUES ('CL2','cb','98962377');
INSERT INTO client VALUES ('CL3','espece','23651457');
INSERT INTO client VALUES ('CL4','espece','73647136');


INSERT INTO pieces_detaches VALUES('P1','moteur');
INSERT INTO pieces_detaches VALUES('P2','roue');
INSERT INTO pieces_detaches VALUES('P3','siege');


INSERT INTO points_de_vente VALUES ('V1','augustin','philipe','magasin','Amiens centre ville');
INSERT INTO points_de_vente VALUES ('V2','malin','alexis','internet','Amiens nord');
INSERT INTO points_de_vente VALUES ('V3','margue','gaston','magasin','Amiens sud');


INSERT INTO ligne VALUES ('L1','centre-commercial nord','gare routiere','DEP6');
INSERT INTO ligne VALUES ('L2','campus','clemenco','DEP6');
INSERT INTO ligne VALUES ('L3','residence universitaire','centre ville quai A','DEP12');


INSERT INTO centre_de_reparation VALUES ('CE1','reparation Ametis');
INSERT INTO centre_de_reparation VALUES ('CE2','reparation Corolis');

INSERT INTO arret VALUES ('A1','fausse au lait');
INSERT INTO arret VALUES ('A2','mairie');
INSERT INTO arret VALUES ('A3','centre-comercial nord');
INSERT INTO arret VALUES ('A4','gare routiere');
INSERT INTO arret VALUES ('A5','clemenceau');
INSERT INTO arret VALUES ('A6','carrefour');

INSERT INTO abonnement VALUES('AB1','mensuel',20,TO_Date('2021-03-29','YYYY-MM-DD'),TO_Date('2021-04-29','YYYY-MM-DD'));
INSERT INTO abonnement VALUES('AB2','semestriel',70,TO_Date('2021-01-29','YYYY-MM-DD'),TO_Date('2021-04-29','YYYY-MM-DD'));
INSERT INTO abonnement VALUES('AB3','hebdomadaire',10,TO_DATE('2021-11-29','YYYY-MM-DD'),TO_DATE('2021-12-06','YYYY-MM-DD'));
INSERT INTO abonnement VALUES('AB4','boursier',0,TO_DATE('2021-11-29','YYYY-MM-DD'),TO_DATE('2022-11-29','YYYY-MM-DD'));


INSERT INTO date_enpanne VALUES ('DAE1',TO_DATE('2022-01-31','YYYY-MM-DD'));
INSERT INTO date_enpanne VALUES('DAE2',TO_DATE('2022-01-22','YYYY-MM-DD'));


INSERT INTO enpanne VALUES ('43','00003','DAE2');
INSERT INTO enpanne VALUES('41','00003','DAE1');



INSERT INTO carte_de_transport VALUES('CDT4','CL1');
INSERT INTO carte_de_transport VALUES('CDT3','CL2');
INSERT INTO carte_de_transport VALUES('CDT2','CL3');
INSERT INTO carte_de_transport VALUES('CDT1','CL4');


INSERT INTO stocke VALUES('P1','00002');
INSERT INTO stocke VALUES('P2','00003');
INSERT INTO stocke VALUES('P3','00001');

INSERT INTO date_malade VALUES ('DM1',TO_DATE('2022-01-31','YYYY-MM-DD'));
INSERT INTO date_malade VALUES ('DM2',TO_DATE('2022-02-01','YYYY-MM-DD'));


INSERT INTO contient VALUES ('L1','A1');
INSERT INTO contient VALUES ('L1','A2');
INSERT INTO contient VALUES ('L1','A3');
INSERT INTO contient VALUES ('L1','A6');
INSERT INTO contient VALUES ('L3','A4');
INSERT INTO contient VALUES ('L3','A6');
INSERT INTO contient VALUES ('L2','A5');
INSERT INTO contient VALUES ('L2','A6');
INSERT INTO contient VALUES ('L2','A2');


INSERT INTO entre_arret VALUES ('A1','A2',02.30);
INSERT INTO entre_arret VALUES ('A1','A3',5.0);

INSERT INTO achete VALUES ('CL1','AB1');
INSERT INTO achete VALUES ('CL3','AB2');
INSERT INTO achete VALUES ('CL1','AB2');




INSERT INTO charger VALUES ('CDT4','AB1');
INSERT INTO charger VALUES ('CDT1','AB2');
INSERT INTO charger VALUES ('CDT3','AB3');




INSERT INTO vendu VALUES ('V1','AB1');
INSERT INTO vendu VALUES ('V2','AB2');
INSERT INTO vendu VALUES ('V3','AB3');

INSERT INTO reparer VALUES ('T1','VH1');
INSERT INTO reparer VALUES ('T1','VH2');
INSERT INTO reparer VALUES ('T1','VH3');
INSERT INTO reparer VALUES ('T1','VH4');
INSERT INTO reparer VALUES ('T1','VH5');
INSERT INTO reparer VALUES ('T1','VH6');
INSERT INTO reparer VALUES ('T2','VH3');
INSERT INTO reparer VALUES ('T3','VH4');

INSERT INTO validee VALUES ('CDT1','A1','VH1',TO_DATE('2021/12/23','YYYY/MM/DD'));
INSERT INTO validee VALUES ('CDT3','A2','VH3',TO_DATE('2021/09/12','YYYY/MM/DD'));
INSERT INTO validee VALUES ('CDT2','A3','VH4',TO_DATE('2021/10/19','YYYY/MM/DD'));




INSERT INTO passage VALUES ('L1','A1','1');
INSERT INTO passage VALUES ('L1','A2','2');
INSERT INTO passage VALUES ('L1','A3','3');
INSERT INTO passage VALUES ('L3','A4','1');



INSERT INTO est_malade VALUES ('C2','DM1');
INSERT INTO est_malade VALUES ('C1','DM2');



INSERT INTO dateremplacement VALUES ('DR1',TO_DATE('2022-02-02','YYYY-MM-DD'));
INSERT INTO dateremplacement VALUES ('DR2',TO_DATE('2022-02-01','YYYY-MM-DD'));


INSERT INTO remplace VALUES ('C1','C3','DR1');
INSERT INTO remplace VALUES ('C2','C4','DR2');
