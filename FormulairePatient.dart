import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//import 'dart:convert';
import 'package:medical_diagnosis_new/frontend/screens/PagePatient.dart';

class FormulairePatient extends StatefulWidget {
  @override
  _FormulairePatientState createState() => _FormulairePatientState();
}

class _FormulairePatientState extends State<FormulairePatient> {
  String _email = '';
  String _motDePasse = '';
  String _nom = '';
  String _prenom = '';
  String _age = '';
  String _numTel = '';
  bool _estInscription = false;

  void _soumettreFormulaire() async {
    if (_estInscription) {
      // Code pour l'inscription de l'Patient
      /*String url = 'https://localhost:8080/Patients';

      Map<String, dynamic> data = {
        'email': _email,
        'password': _motDePasse,
        'nom': _nom,
        'prenom': _prenom,
        'age': _age,
        'numTel': _numTel,
      };

      try {
        final response = await http.post(
          Uri.parse(url),
          body: json.encode(data),
          headers: {'Content-Type': 'application/json'},
        );

        if (response.statusCode == 200) {
          // Inscription réussie
          print('Inscription réussie');
          // Ajoutez ici toute autre logique que vous souhaitez exécuter après une inscription réussie
        } else {
          // Échec de l'inscription
          print('Échec de l'inscription avec le code d'état : ${response.statusCode}');
          // Ajoutez ici toute logique de gestion des erreurs
        }
      } catch (e) {
        // Une erreur s'est produite pendant l'inscription
        print('Une erreur s'est produite pendant l'inscription : $e');
        // Ajoutez ici toute logique de gestion des erreurs
      }*/
      // Vous pouvez ajouter votre code ici pour enregistrer les informations de l'Patient
      print('Inscription : Email=$_email, Mot de passe=$_motDePasse, Nom=$_nom, Prénom=$_prenom, Age=$_age, Num Tel=$_numTel');
    } else {
      // Code pour la connexion de l'Patient
      // Vous pouvez ajouter votre code ici pour vérifier les informations de connexion de l'Patient
      print('Connexion : Email=$_email, Mot de passe=$_motDePasse');
      // Redirection vers la page patient
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PagePatient(
            email: _email,
            nom: _nom,
            prenom: _prenom,
            age: _age,
            numTel: _numTel,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_estInscription ? 'Inscription' : 'Connexion'),
        backgroundColor: Colors.blue, // Couleur de l'app bar

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
            SizedBox(height: 5.0),
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
              SizedBox(height: 5.0),
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
              SizedBox(height: 5.0),
              TextField(
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
              SizedBox(height: 5.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Age',
                  filled: true,
                  fillColor: Colors.grey[200], // Couleur du champ de texterempli
                ),
                onChanged: (value) {
                  setState(() {
                    _age = value;
                  });
                },
              ),
              SizedBox(height: 5.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Numéro de téléphone',
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
            SizedBox(height: 5.0),
            ElevatedButton(
              onPressed: _soumettreFormulaire,
              child: Text(_estInscription ? 'S\'inscrire' : 'Se connecter'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Couleur du bouton
                onPrimary: Colors.white, // Couleur du texte du bouton
              ),
            ),
            SizedBox(height: 5.0),
            TextButton(
              onPressed: () {
                setState(() {
                  _estInscription = !_estInscription;
                });
              },
              child: Text(
                _estInscription ? 'Déjà inscrit ? Se connecter' : 'Pas encore inscrit ? S\'inscrire',
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