import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messagerie'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text(
          'Ceci est l\'écran de messagerie',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}