abstract class Connectable {
  void connecter(String utilisateur);

  void deconnecter();
}

class ServeurAPI implements Connectable {
  @override
  void connecter(String utilisateur) {
    print('ServeurAPI : Connexion établie pour $utilisateur.');
  }

  @override
  void deconnecter() {
    print('ServeurAPI : Déconnexion réussie.');
  }
}

class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print('BaseDeDonnees : Connexion établie pour $utilisateur.');
  }

  @override
  void deconnecter() {
    print('BaseDeDonnees : Déconnexion réussie.');
  }
}

void main() {
  List<Connectable> services = [ServeurAPI(), BaseDeDonnees()];

  for (var service in services) {
    service.connecter('Laala');
    service.deconnecter();
  }
}
