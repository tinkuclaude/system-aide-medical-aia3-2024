import 'package:flutter/material.dart';

class FormulaireMedecin extends StatefulWidget {
  @override
  _FormulaireMedecinState createState() => _FormulaireMedecinState();
}

class _FormulaireMedecinState extends State<FormulaireMedecin> {
  String _email = '';
  String _motDePasse = '';
  String _nom = '';
  String _prenom = '';
  String _specialite = '';
  String _numTel = '';
  bool _estInscription = false;

  void _soumettreFormulaire() async {
    if (_estInscription) {
      print(
          'Inscription : Email=$_email, Mot de passe=$_motDePasse, Nom=$_nom, Prénom=$_prenom, Spécialité=$_specialite, Numéro de téléphone=$_numTel');
    } else {
      print('Connexion : Email=$_email, Mot de passe=$_motDePasse');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PageMedecin(email: _email),
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
                  labelText: 'Prenom',
                  filled: true,
                  fillColor: Colors.grey[200], // Couleur du champ de texte rempli
                ),
                onChanged: (value) {
                  setState(() {
                    _prenom = value;
                  });
                },
              ),
              SizedBox(height: 6.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Specialite',
                  filled: true,
                  fillColor: Colors.grey[200], // Couleur du champ de texte rempli
                ),
                onChanged: (value) {
                  setState(() {
                    _specialite = value;
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
                _estInscription ? "S'inscrire" : 'Se connecter',
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

class PageMedecin extends StatelessWidget {
  final String email;

  PageMedecin({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Médecin'),
      ),
      body: Center(
        child: Text('Bienvenue, $email !'),
      ),
    );
  }
}