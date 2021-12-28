import 'package:flutter/material.dart';
import 'package:backpack/views/home.dart';
import 'package:backpack/views/notifications.dart';
import 'package:backpack/views/search.dart';
import 'package:backpack/views/settings.dart';

import 'historias.dart';

class InicioPage extends StatefulWidget {
  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  int _selectPage = 0;
  Color colorfondo = const Color(0xff1a1a1a);
  Color colorfondobar = const Color(0xffb3b3b3);

  final _pageOptions = [
    HomePage(),
    SearchPage(),
    HistoriasPage(),
    NotificationsPage(),
    SettingsPage()
  ];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectPage],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff8b6ef0),
              Color(0xff00f9ea),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
          ),
          border: Border(
            top: BorderSide(
              color: Colors.transparent,
              width: 3.0,
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: colorfondo,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectPage,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int index) {
            setState(() {
              _selectPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/iconos/Icon.png',
                color: colorfondobar,
                width: 20,
                alignment: Alignment.topCenter,
              ),
              title: const Padding(padding: EdgeInsets.all(0)),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/iconos/Iconsearch.png',
                color: colorfondobar,
                width: 20,
                alignment: Alignment.topCenter,
              ),
              title: const Padding(padding: EdgeInsets.all(0)),
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(0, -35),
                    child: Center(
                      child: Container(
                        height: 75,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff8b6ef0),
                              Color(0xff00f9ea),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
                          ),
                          border:
                              Border.all(color: Colors.transparent, width: 3.0),
                        ),
                        alignment: Alignment.center,
                        child: ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Image.asset(
                                        'assets/images/users/seductive-young.png'),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              title: Padding(padding: EdgeInsets.all(0)),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/iconos/Notification-Bell.png',
                color: colorfondobar,
                width: 20,
                alignment: Alignment.topCenter,
              ),
              title: Padding(padding: EdgeInsets.all(0)),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/iconos/Settings.png',
                color: colorfondobar,
                width: 20,
                alignment: Alignment.topCenter,
              ),
              title: Padding(padding: EdgeInsets.all(0)),
            ),
          ],
        ),
      ),
    );
  }
}
