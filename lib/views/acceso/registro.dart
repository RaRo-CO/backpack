import 'package:flutter/material.dart';

class RegistroPage extends StatefulWidget {
  RegistroPage({Key? key}) : super(key: key);

  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  Color colorfondo = const Color(0xff1a1a1a);
  bool logueado = false;

  //FirebaseAuth auth = FirebaseAuth.instance;
  String errorMessage = '';
  String successMessage = '';
  GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();

  String _emailId = '';
  String _password = '';
  final _emailIdController = TextEditingController(text: '');
  final _passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorfondo,
        appBar: PreferredSize(
          preferredSize: const Size(300.0, 300.0),
          child: Image.asset('assets/images/superior.png'),
        ),
        body: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Container(
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 200,
              ),
            ),
          ),
          Expanded(
            child: Form(
              key: _formStateKey,
              child: Column(
                children: <Widget>[
                  Container(
                    child: TextFormField(
                      onSaved: (value) {
                        _emailId = value!;
                      },
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailIdController,
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.green,
                              width: 2,
                              style: BorderStyle.solid),
                        ),
                        labelText: "Email Id",
                        icon: Icon(
                          Icons.email,
                          color: Colors.green,
                        ),
                        fillColor: Colors.white,
                        labelStyle: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      onSaved: (value) {
                        _emailId = value!;
                      },
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailIdController,
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.green,
                              width: 2,
                              style: BorderStyle.solid),
                        ),
                        labelText: "Email Id",
                        icon: Icon(
                          Icons.email,
                          color: Colors.green,
                        ),
                        fillColor: Colors.white,
                        labelStyle: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text('Olvidaste tu contraseña'),
                  ),
                  Container(
                    child: ElevatedButton(
                      child: Text('Acceso'),
                      onPressed: () {},
                    ),
                  ),
                  Center(
                      child: Row(
                        children: [
                          Text('No tienes una cuenta'),
                          Text('Inscribirse'),
                        ],
                      )),
                ],
              ),
            ),
          )
        ]));
  }

  String validatePassword(String value) {
    if (value.trim().isEmpty) {
      return 'Password is empty!!!';
    }
    return 'null';
  }
}
