CREATE TABLE depot(
   id_depot VARCHAR(50),
   nom_depot VARCHAR(50),
   PRIMARY KEY(id_depot)
);

CREATE TABLE pieces_detaches(
   id_piece VARCHAR(50),
   type VARCHAR(50),
   PRIMARY KEY(id_piece)
);

CREATE TABLE points_de_vente(
   id_point VARCHAR(50),
   nom_gerant VARCHAR(50),
   prenom_gerant VARCHAR(50),
   type VARCHAR(50),
   emplacement VARCHAR(50),
   PRIMARY KEY(id_point)
);

CREATE TABLE ligne(
   id_ligne VARCHAR(50),
   terminus VARCHAR(50),
   depart VARCHAR(50),
   id_depot VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_ligne),
   FOREIGN KEY(id_depot) REFERENCES depot(id_depot)
);

CREATE TABLE centre_de_reparation(
   id_centre VARCHAR(50),
   nom_centre VARCHAR(50),
   PRIMARY KEY(id_centre)
);

CREATE TABLE arret(
   id_arret VARCHAR(50),
   emplacement VARCHAR(50),
   PRIMARY KEY(id_arret)
);

CREATE TABLE abonnement(
   id_abonnement VARCHAR(50),
   type_d_abonnement VARCHAR(50),
   prix DECIMAL(15,2),
   date_debut_validite DATE,
   date_fin_validite DATE,
   PRIMARY KEY(id_abonnement)
);

CREATE TABLE personne(
   id_personne VARCHAR(50),
   nom VARCHAR(50),
   prenom VARCHAR(50),
   date_de_naissance DATE,
   PRIMARY KEY(id_personne)
);

CREATE TABLE dateChauff(
   id_date_chauff VARCHAR(50),
   date_debut DATE,
   PRIMARY KEY(id_date_chauff)
);

CREATE TABLE date_enpanne(
   id_date_enpanne VARCHAR(50),
   date_enpanne DATE,
   PRIMARY KEY(id_date_enpanne)
);

CREATE TABLE date_malade(
   id_malade VARCHAR(50),
   date_malade DATE,
   PRIMARY KEY(id_malade)
);

CREATE TABLE dateremplacement(
   id_date_remp VARCHAR(50),
   dateremp DATE,
   PRIMARY KEY(id_date_remp)
);

CREATE TABLE vehicule(
   id_vec VARCHAR(50),
   PRIMARY KEY(id_vec)
);

CREATE TABLE metro(
   id_metro VARCHAR(50),
   id_vec VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_metro),
   FOREIGN KEY(id_vec) REFERENCES vehicule(id_vec)
);

CREATE TABLE bus(
   id_bus VARCHAR(50),
   plaque VARCHAR(50) NOT NULL,
   type_moteur VARCHAR(50),
   id_vec VARCHAR(50) NOT NULL,
   id_depot VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_bus),
   FOREIGN KEY(id_vec) REFERENCES vehicule(id_vec),
   FOREIGN KEY(id_depot) REFERENCES depot(id_depot)
);

CREATE TABLE client(
   id_client VARCHAR(50),
   type_de_paiement VARCHAR(50),
   id_personne VARCHAR(50),
   PRIMARY KEY(id_client),
   FOREIGN KEY(id_personne) REFERENCES personne(id_personne)
);

CREATE TABLE techniciens(
   id_techniciens VARCHAR(50),
   NUMERO_SS INT,
   type_vehicule VARCHAR(50),
   id_personne VARCHAR(50) NOT NULL,
   id_centre VARCHAR(50),
   PRIMARY KEY(id_techniciens),
   FOREIGN KEY(id_personne) REFERENCES personne(id_personne),
   FOREIGN KEY(id_centre) REFERENCES centre_de_reparation(id_centre)
);

CREATE TABLE chauffeur(
   id_chauffeur VARCHAR(50),
   NUMERO_SS INT,
   TYPE_DE_VEHICULE VARCHAR(50),
   DATE_DE_PERMIS DATE,
   id_personne VARCHAR(50) NOT NULL,
   id_bus VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_chauffeur),
   FOREIGN KEY(id_personne) REFERENCES personne(id_personne),
   FOREIGN KEY(id_bus) REFERENCES bus(id_bus)
);

CREATE TABLE carte_de_transport(
   id_carte VARCHAR(50),
   id_client VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_carte),
   FOREIGN KEY(id_client) REFERENCES client(id_client)
);

CREATE TABLE stocke(
   id_piece VARCHAR(50),
   id_centre VARCHAR(50),
   PRIMARY KEY(id_piece, id_centre),
   FOREIGN KEY(id_piece) REFERENCES pieces_detaches(id_piece),
   FOREIGN KEY(id_centre) REFERENCES centre_de_reparation(id_centre)
);

CREATE TABLE contient(
   id_ligne VARCHAR(50),
   id_arret VARCHAR(50),
   PRIMARY KEY(id_ligne, id_arret),
   FOREIGN KEY(id_ligne) REFERENCES ligne(id_ligne),
   FOREIGN KEY(id_arret) REFERENCES arret(id_arret)
);

CREATE TABLE entre_arret(
   id_arret VARCHAR(50),
   id_arret_1 VARCHAR(50),
   temps_arret VARCHAR(50),
   PRIMARY KEY(id_arret, id_arret_1),
   FOREIGN KEY(id_arret) REFERENCES arret(id_arret),
   FOREIGN KEY(id_arret_1) REFERENCES arret(id_arret)
);

CREATE TABLE achete(
   id_client VARCHAR(50),
   id_abonnement VARCHAR(50),
   PRIMARY KEY(id_client, id_abonnement),
   FOREIGN KEY(id_client) REFERENCES client(id_client),
   FOREIGN KEY(id_abonnement) REFERENCES abonnement(id_abonnement)
);

CREATE TABLE charger(
   id_carte VARCHAR(50),
   id_abonnement VARCHAR(50),
   PRIMARY KEY(id_carte, id_abonnement),
   FOREIGN KEY(id_carte) REFERENCES carte_de_transport(id_carte),
   FOREIGN KEY(id_abonnement) REFERENCES abonnement(id_abonnement)
);

CREATE TABLE vendu(
   id_point VARCHAR(50),
   id_abonnement VARCHAR(50),
   PRIMARY KEY(id_point, id_abonnement),
   FOREIGN KEY(id_point) REFERENCES points_de_vente(id_point),
   FOREIGN KEY(id_abonnement) REFERENCES abonnement(id_abonnement)
);

CREATE TABLE enpanne(
   id_bus VARCHAR(50),
   id_centre VARCHAR(50),
   id_date_enpanne VARCHAR(50),
   PRIMARY KEY(id_bus, id_centre, id_date_enpanne),
   FOREIGN KEY(id_bus) REFERENCES bus(id_bus),
   FOREIGN KEY(id_centre) REFERENCES centre_de_reparation(id_centre),
   FOREIGN KEY(id_date_enpanne) REFERENCES date_enpanne(id_date_enpanne)
);

CREATE TABLE reparer(
   id_techniciens VARCHAR(50),
   id_vec VARCHAR(50),
   PRIMARY KEY(id_techniciens, id_vec),
   FOREIGN KEY(id_techniciens) REFERENCES techniciens(id_techniciens),
   FOREIGN KEY(id_vec) REFERENCES vehicule(id_vec)
);

CREATE TABLE conduit(
   id_chauffeur VARCHAR(50),
   id_bus VARCHAR(50),
   id_date_chauff VARCHAR(50),
   date_de_fin DATE,
   PRIMARY KEY(id_chauffeur, id_bus, id_date_chauff),
   FOREIGN KEY(id_chauffeur) REFERENCES chauffeur(id_chauffeur),
   FOREIGN KEY(id_bus) REFERENCES bus(id_bus),
   FOREIGN KEY(id_date_chauff) REFERENCES dateChauff(id_date_chauff)
);

CREATE TABLE validee(
   id_carte VARCHAR(50),
   id_arret VARCHAR(50),
   id_vec VARCHAR(50),
   date_v VARCHAR(50),
   PRIMARY KEY(id_carte, id_arret, id_vec),
   FOREIGN KEY(id_carte) REFERENCES carte_de_transport(id_carte),
   FOREIGN KEY(id_arret) REFERENCES arret(id_arret),
   FOREIGN KEY(id_vec) REFERENCES vehicule(id_vec)
);

CREATE TABLE passage(
   id_ligne VARCHAR(50),
   id_arret VARCHAR(50),
   numero_passage VARCHAR(50),
   PRIMARY KEY(id_ligne, id_arret),
   FOREIGN KEY(id_ligne) REFERENCES ligne(id_ligne),
   FOREIGN KEY(id_arret) REFERENCES arret(id_arret)
);

CREATE TABLE est_malade(
   id_chauffeur VARCHAR(50),
   id_malade VARCHAR(50),
   PRIMARY KEY(id_chauffeur, id_malade),
   FOREIGN KEY(id_chauffeur) REFERENCES chauffeur(id_chauffeur),
   FOREIGN KEY(id_malade) REFERENCES date_malade(id_malade)
);

CREATE TABLE remplace(
   id_chauffeur VARCHAR(50),
   id_chauffeur_1 VARCHAR(50),
   id_date_remp VARCHAR(50),
   PRIMARY KEY(id_chauffeur, id_chauffeur_1, id_date_remp),
   FOREIGN KEY(id_chauffeur) REFERENCES chauffeur(id_chauffeur),
   FOREIGN KEY(id_chauffeur_1) REFERENCES chauffeur(id_chauffeur),
   FOREIGN KEY(id_date_remp) REFERENCES dateremplacement(id_date_remp)
);
