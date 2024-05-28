// Importez le package nécessaire
import 'package:database_flutter/model/table_util.dart';

// Définissez la classe Personne
class Personne {
  int id;
  String nom;
  String prenom;
  String age;

  // Constructeur par défaut
  Personne({
    this.id = 0,
    this.nom = '',
    this.prenom = '',
    this.age = '',
  });

  // Constructeur à partir d'une map
  Personne.fromMap(Map<String, dynamic> map)
      : id = map[COLONNE_ID] ?? 0,
        nom = map[COLONNE_NOM] ?? '',
        prenom = map[COLONNE_PRENOM] ?? '',
        age = map[COLONNE_AGE] ?? '';

  // Méthode pour convertir une instance de Personne en map
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      COLONNE_NOM: nom,
      COLONNE_PRENOM: prenom,
      COLONNE_AGE: age,
    };
    if (id != 0) {
      map[COLONNE_ID] = id;
    }
    return map;
  }
}
