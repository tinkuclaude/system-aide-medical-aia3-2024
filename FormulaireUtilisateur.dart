import 'package:flutter/material.dart';

class FormulaireUtilisateur extends StatefulWidget {
  @override
  _FormulaireUtilisateurState createState() => _FormulaireUtilisateurState();
}

class _FormulaireUtilisateurState extends State<FormulaireUtilisateur> {
  String _email = '';
  String _motDePasse = '';
  String _nom = '';
  String _prenom = '';
  String _age = '';
  bool _estInscription = false;

  void _soumettreFormulaire() {
    if (_estInscription) {
      // Code pour l'inscription de l'utilisateur
      print('Inscription : Nom=$_nom, Prénom=$_prenom, Email=$_email, Mot de passe=$_motDePasse, Age=$_age');
    } else {
      // Code pour la connexion de l'utilisateur
      print('Connexion : Email=$_email, Mot de passe=$_motDePasse');
      // Redirection vers la page utilisateur
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PageUtilisateur(email: _email),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_estInscription ? 'Inscription' : 'Connexion'),
        backgroundColor: Colors.blueAccent, // Couleur de l'app bar
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(6.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.grey[200], // Couleur du champ de texte rempli
                ),
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              SizedBox(height: 6.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  filled: true,
                  fillColor: Colors.grey[200], // Couleur du champ de texte rempli
                ),
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    _motDePasse = value;
                  });
                },
              ),
              if (_estInscription) ...[
                SizedBox(height: 6.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nom',
                    filled: true,
                    fillColor: Colors.grey[200], // Couleur du champ de texte rempli
                  ),
                  onChanged: (value) {
                    setState(() {
                      _nom = value;
                    });
                  },
                ),
                SizedBox(height: 6.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Prénom',
                    filled: true,
                    fillColor: Colors.grey[200], // Couleur du champ de texte rempli
                  ),
                  onChanged: (value) {
                    setState(() {
                      _prenom = value;
                    });
                  },
                ),
              ],
              SizedBox(height: 6.0),
              ElevatedButton(
                onPressed: _soumettreFormulaire,
                child: Text(
                  _estInscription ? 'S\'inscrire' : 'Se connecter',
                  style: TextStyle(color: Colors.white), // Couleur du texte du bouton
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent, // Couleur du bouton
                ),
              ),
              SizedBox(height: 6.0),
              TextButton(
                onPressed: () {
                  setState(() {
                    _estInscription = !_estInscription;
                  });
                },
                child: Text(
                  _estInscription ? 'Déjà inscrit ? Se connecter' : 'Pas encore inscrit ? S\'inscrire',
                  style: TextStyle(color: Colors.blue), // Couleur du texte
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageUtilisateur extends StatelessWidget {
  final String email;

  PageUtilisateur({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Utilisateur'),
        backgroundColor: Colors.blue, // Couleur de l'app bar
      ),
      body: Center(
        child: Text(
          'Bienvenue, $email !',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}