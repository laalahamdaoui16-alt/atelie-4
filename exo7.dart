
class Tache {
  String description;

  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++;
  }
}

void main() {
  var tache1 = Tache('Etudier Dart');
  var tache2 = Tache('Faire les exercices');
  var tache3 = Tache('Tester le programme');
}
print('Nombre total de tâches : ${Tache.nombreTotal}');