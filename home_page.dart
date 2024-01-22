import 'package:flutter/material.dart';
import 'package:medical_diagnosis_new/frontend/screens/ChoiceUser.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Accueil',
          style: TextStyle(
            fontSize: 30,
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
              'Bienvenue sur SADM',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.transparent,
            ),
            SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChoiceUser()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              icon: Icon(
                Icons.arrow_forward,
                size: 30,
              ),
              label: Text(
                'Commencer',
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 40), // Espacement supplémentaire
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.local_hospital,
                  size: 50,
                  color: Colors.blue,
                ),
                SizedBox(width: 20), // Espacement entre les icônes
                Icon(
                  Icons.medical_services,
                  size: 50,
                  color: Colors.blue,
                ),
                SizedBox(width: 20), // Espacement entre les icônes
                Icon(
                  Icons.favorite,
                  size: 50,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}