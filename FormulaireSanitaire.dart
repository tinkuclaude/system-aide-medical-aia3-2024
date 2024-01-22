import 'package:flutter/material.dart';

class FormulaireSanitaire extends StatefulWidget {
  @override
  _FormulaireSanitaireState createState() => _FormulaireSanitaireState();
}

class _FormulaireSanitaireState extends State<FormulaireSanitaire> {
  String _email = '';
  String _mdp = '';
  String _nom = '';
  String _type = '';
  String _ville = '';
  String _numTel = '';
  bool _estInscription = false;

  void _soumettreFormulaire() async {
    if (_estInscription) {
      print(
          'Inscription : Email=$_email, Mot de passe=$_mdp, Nom=$_nom, Type=$_type, Ville=$_ville, Numéro Tel=$_numTel');
    } else {
      print('Connexion : Email=$_email, Mot de passe=$_mdp');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PageSanitaire(email: _email),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_estInscription ? 'Inscription' : 'Connexion'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
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
            TextField(
              decoration: InputDecoration(
                labelText: 'Mot de Passe',
                filled: true,
                fillColor: Colors.grey[200], // Couleur du champ de texte rempli
              ),
              obscureText: true,
              onChanged: (value) {
                setState(() {
                  _mdp = value;
                });
              },
            ),
            if (_estInscription) ...[
              SizedBox(height: 6.0),
              TextField(
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
              TextField(
                decoration: InputDecoration(
                  labelText: 'Type',
                  filled: true,
                  fillColor: Colors.grey[200], // Couleur du champ de texte rempli
                ),
                onChanged: (value) {
                  setState(() {
                    _type = value;
                  });
                },
              ),
              SizedBox(height: 6.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Ville',
                  filled: true,
                  fillColor: Colors.grey[200], // Couleur du champ de texte rempli
                ),
                onChanged: (value) {
                  setState(() {
                    _ville = value;
                  });
                },
              ),
              SizedBox(height: 6.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Telephone',
                  filled: true,
                  fillColor: Colors.grey[200], // Couleur du champ de texte rempli
                ),
                onChanged: (value) {
                  setState(() {
                    _numTel = value;
                  });
                },
              ),
            ],
            SizedBox(height: 6.0),
            ElevatedButton(
              onPressed: _soumettreFormulaire,
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Couleur du bouton
              ),
              child: Text(
                _estInscription ? 'S\'inscrire' : 'Se connecter',
                style: TextStyle(
                  color: Colors.white, // Couleur du texte du bouton
                ),
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
                _estInscription
                    ? 'Déjà inscrit ? Se connecter'
                    : 'Pas encore inscrit ? S\'inscrire',
                style: TextStyle(
                  color: Colors.blue, // Couleur du texte du bouton
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageSanitaire extends StatelessWidget {
  final String email;

  PageSanitaire({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Sanitaire'),
      ),
      body: Center(
        child: Text('Bienvenue, $email !'),
      ),
    );
  }
}