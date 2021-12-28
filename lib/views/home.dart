import 'package:backpack/views/acceso/login.dart';
import 'package:flutter/material.dart';
import 'package:backpack/views/mensajes.dart';
import 'package:backpack/views/perfilpublico.dart';
import 'package:backpack/widget/cards.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  Color colorfondo = const Color(0xff1a1a1a);

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorfondo,
      appBar: AppBar(
        backgroundColor: colorfondo,
        leading: Container(
            margin: const EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Stack(
              children: <Widget>[
                InkWell(
                  child: Image.asset(
                    'assets/iconos/5.png',
                  ),
                  onTap: () {
                    /*if () {

                    }*/
                    Navigator.push<dynamic>(
                      context,
                      MaterialPageRoute<dynamic>(
                        builder: (BuildContext context) => LoginPage(),
                      ),
                    );
                  },
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 8, 0, 0),
                  child: const Text(
                    '2',
                    style: TextStyle(color: Colors.amberAccent),
                  ),
                ),
              ],
            )),
        title: SizedBox(
          width: 100,
          child: Image.asset('assets/images/logo.png'),
        ),
        centerTitle: true,
        actions: [
          Container(
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                colors: [
                  Color(0xff8b6ef0),
                  Color(0xff00f9ea),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
              ),
              border: Border.all(color: Colors.transparent, width: 3.0),
            ),
            alignment: Alignment.center,
            child: InkWell(
              child: Image.asset(
                'assets/images/users/woman-with.png',
              ),
              onTap: () {
                Navigator.push<dynamic>(
                  context,
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => const PerfilPublico(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [Cards(), Cards(), Cards(), Cards(), Cards()],
            ),
          ),
        ],
      ),
    );
  }
}
