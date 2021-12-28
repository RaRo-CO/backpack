import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  Color colorfondo = const Color(0xff1a1a1a);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorfondo,
      body: Center(
        child: Text(
          'View de los Ajustes',
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ),
    );
  }
}
