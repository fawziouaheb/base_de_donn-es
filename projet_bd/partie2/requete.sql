select type_de_paiement,COUNT(id_client)
from client 
where type_de_paiement='cb' group by type_de_paiement; 


select emplacement 
from arret,contient
where arret.id_arret=contient.id_arret and id_ligne='L1'
union 
select  emplacement 
from arret,contient 
where arret.id_arret=contient.id_arret and  id_ligne='L3';


select terminus
from arret,contient,ligne 
where ligne.id_ligne=contient.id_ligne and arret.id_arret=contient.id_arret and emplacement='mairie';
 
select  distinct emplacement 
from contient c1,arret 
 where arret.id_arret=c1.id_arret and not exists 
                             (select id_ligne from ligne where 
                                not exists ( select id_arret from contient c2 where c1.id_arret=c2.id_arret and c2.id_ligne=ligne.id_ligne));
  
select emplacement 
from arret 
where id_arret=(select id_arret 
                   from ligne,contient c2 
                   where c2.id_ligne=ligne.id_ligne 
                   group by c2.id_arret 
                    having(count(c2.id_ligne))=(select count(id_ligne) from ligne));




select emplacement
from arret 
where id_arret=(select  distinct id_arret from contient c2  where not exists (
(select id_ligne from ligne )
minus 
(select contient.id_ligne from contient where c2.id_arret=contient.id_arret  )));

select nom,prenom 
from personne,techniciens 
where personne.id_personne=techniciens.id_personne and techniciens.id_techniciens=(
select  distinct id_techniciens from reparer c1  where  not exists (
                                         select id_vec from vehicule where not exists 
                                          ( select id_techniciens from reparer c2 where c1.id_techniciens=c2.id_techniciens and c2.id_vec=vehicule.id_vec)));




select nom,prenom 
from personne,techniciens 
where personne.id_personne=techniciens.id_personne and techniciens.id_techniciens=(
select id_techniciens 
from reparer ,vehicule   
where reparer.id_vec=vehicule.id_vec 
group by reparer.id_techniciens having count(reparer.id_vec)=(select count(id_vec) from vehicule));

select nom,prenom 
from personne,techniciens
where personne.id_personne=techniciens.id_personne and techniciens.id_techniciens=
(select  distinct id_techniciens from reparer c2  where 
not exists (
(select id_vec from vehicule )
minus 
(select reparer.id_vec from reparer where c2.id_techniciens=reparer.id_techniciens)));



select nom,prenom 
from personne 
where id_personne=(select id_personne  from  techniciens
INTERSECT
select id_personne from client);


select nom,prenom 
from personne 
where id_personne=(select id_personne  from  techniciens
INTERSECT
select id_personne from chauffeur);


