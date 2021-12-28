import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorfondo,
      appBar: PreferredSize(
        preferredSize: const Size(300.0, 300.0),
        child: Image.asset('assets/images/superior.png'),
      ),
      body: Column(
        children: <Widget>[
          Transform.translate(
            offset: const Offset(0, -45),
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
                      controller: _emailIdController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xff2c2b2b),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                          borderSide:
                              BorderSide(width: 2, style: BorderStyle.solid),
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: Icon(
                            Icons.account_circle,
                            color: Color(0xffb292e3),
                            size: 35,
                          ),
                        ),
                        hintText: "Nombre de usuario",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      onSaved: (value) {
                        _emailId = value!;
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _emailIdController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xff2c2b2b),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                          borderSide:
                              BorderSide(width: 2, style: BorderStyle.solid),
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: Icon(
                            Icons.lock,
                            color: Color(0xffb292e3),
                            size: 35,
                          ),
                        ),
                        hintText: "Inserta tu contraseña",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      onSaved: (value) {
                        _emailId = value!;
                      },
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  ),
                  GestureDetector(
                    child: const Center(
                      child: Text(
                        '¿Olvidaste tu contraseña?',
                        style: TextStyle(
                          color: Color(0xff237fa6),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                    width: size.width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(60)),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffad4ff5),
                          Color(0xffdc8acf),
                          Color(0xffc54edf),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.bottomRight,
                      ),
                      border: Border.all(color: Colors.transparent, width: 3.0),
                    ),
                    child: ElevatedButton(
                      child: const Text(
                        'ACCESO',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.radio_button_unchecked,
                        color: Color(0xff237fa6),
                        size: 15,
                      ),
                      Text(
                        'Recuérdame',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('¿No tienes una cuenta?',
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                      Text(' Inscríbete',
                          style: TextStyle(
                              color: Color(0xff237fa6),
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String validatePassword(String value) {
    if (value.trim().isEmpty) {
      return 'Password is empty!!!';
    }
    return 'null';
  }
}
