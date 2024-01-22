import 'package:flutter/material.dart';
import 'package:medical_diagnosis_new/frontend/screens/FormulaireMedecin.dart';
import 'package:medical_diagnosis_new/frontend/screens/FormulaireSanitaire.dart';
import 'package:medical_diagnosis_new/frontend/screens/FormulaireUtilisateur.dart';
import 'package:medical_diagnosis_new/frontend/screens/FormulairePatient.dart';

class ChoiceUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choix de l\'utilisateur',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenue dans l\'application de diagnostic médical',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormulaireSanitaire()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              icon: Icon(
                Icons.person,
                size: 30,
                color: Colors.deepPurple,
              ),
              label: Text(
                'Utilisateur',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormulairePatient()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              icon: Icon(
                Icons.person,
                size: 30,
                color: Colors.blue,
              ),
              label: Text(
                'Patient',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormulaireMedecin()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrangeAccent,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              icon: Icon(
                Icons.medical_services,
                size: 30,
                color: Colors.blue,
              ),
              label: Text(
                'Medecin',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormulaireSanitaire()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              icon: Icon(
                  Icons.local_hospital,
                size: 30,
                color: Colors.blue,
              ),
              label: Text(
                'Centre sanitaire',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}