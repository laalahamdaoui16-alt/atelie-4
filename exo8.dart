
class Livre {
  String titre;
  String auteur;

  Livre(this.titre, this.auteur);

  void afficherInfos() {
    print('Titre: $titre, Auteur: $auteur');
  }
}
int _pages = 200;

int get pages => _pages;

static int totalLivres = 0;
Livre(this.titre, this.auteur) {
  totalLivres++;
}static void afficherTotalLivres() {
  print('Nombre total de livres : $totalLivres');
}class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre)
      : super(titre, auteur);

  void afficherRoman() {
    afficherInfos();
    print('Genre : $genre');
  }
}void main() {
  var livre1 = Livre('Les Miserables', 'Victor Hugo');
  var livre2 = Livre('L Etranger', 'Albert Camus');

  livre1.afficherInfos();
  print('Pages : ${livre1.pages}');

  livre2.afficherInfos();

  var roman1 = Roman('Sherlock Holmes', 'Arthur Conan Doyle', 'Policier');
  var roman2 = Roman('Le Comte de Monte-Cristo', 'Alexandre Dumas', 'Aventure');

  roman1.afficherRoman();
  roman2.afficherRoman();

  Livre.afficherTotalLivres();
}