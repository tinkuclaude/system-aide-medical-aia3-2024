import 'package:flutter/material.dart';
import 'package:medical_diagnosis_new/frontend/screens/ChoiceUser.dart';
import 'package:medical_diagnosis_new/frontend/screens/Message.dart';
import 'package:medical_diagnosis_new/frontend/screens/MedicalHistory.dart';
import 'package:medical_diagnosis_new/frontend/screens/MedicalHistoryPage.dart';
import 'package:medical_diagnosis_new/frontend/screens/MessageScreen.dart';



class PagePatient extends StatelessWidget {
  final String email;
  final String nom;
  final String prenom;
  final String age;
  final String numTel;

  PagePatient({
    required this.email,
    required this.nom,
    required this.prenom,
    required this.age,
    required this.numTel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon profil'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blueAccent, Colors.lightBlueAccent],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blueAccent,
                    width: 2.0,
                  ),
                ),
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.indigo,
                  child: Icon(
                    Icons.person,
                    size: 50.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Card(
                color: Colors.white,
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Mes Informations',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2.0),
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text(
                          'Email: $email',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text(
                          'Nom: $nom',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text(
                          'Prénom: $prenom',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.calendar_today),
                        title: Text(
                          'Age: $age',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text(
                          'Numéro de téléphone: $numTel',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MessageScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  onPrimary: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.message),
                    SizedBox(width: 6.0),
                    Text('CONSULTER'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  }