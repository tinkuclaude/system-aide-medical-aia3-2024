import 'package:flutter/material.dart';
import 'package:medical_diagnosis_new/frontend/screens/home_page.dart';
/*import 'package:medical_diagnosis_new/frontend/screens/ChoiceUser.dart';
import 'package:medical_diagnosis_new/frontend/screens/CRUDUtilisateur.dart';
import 'package:medical_diagnosis_new/frontend/screens/FormulaireUtilisateur.dart';
import 'package:medical_diagnosis_new/frontend/screens/FormulairePatient.dart';

*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Program',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Accueil(),

    );
  }
}