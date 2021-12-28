import 'package:flutter/material.dart';

class TabBarPublico extends StatelessWidget {
  Color colorfondo = const Color(0xff1a1a1a);
  Color colorfondobar = const Color(0xffb3b3b3);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: colorfondo,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            color: Colors.black,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  TabBar(
                    tabs: [
                      Image.asset(
                        'assets/iconos/users.png',
                        width: 30,
                      ),
                      Image.asset(
                        'assets/iconos/padlocks.png',
                        width: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/images/fotopostmypack.png',
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/images/fotopostmypack.png',
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/images/fotopostmypack.png',
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/images/fotopostmypack.png',
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/images/fotopostmypack.png',
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/images/fotopostmypack.png',
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  "Perfil Privado",
                  style: TextStyle(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
