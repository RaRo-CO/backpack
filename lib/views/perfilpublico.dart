import 'package:flutter/material.dart';
import 'package:backpack/widget/TabbarPublico.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import 'home.dart';
import 'notifications.dart';
import 'search.dart';
import 'settings.dart';

class PerfilPublico extends StatefulWidget {
  const PerfilPublico({Key? key}) : super(key: key);

  @override
  _PerfilPublicoState createState() => _PerfilPublicoState();
}

class _PerfilPublicoState extends State<PerfilPublico> {
  int _selectPage = 0;
  Color colorfondo = const Color(0xff1a1a1a);
  Color colorfondobar = const Color(0xffb3b3b3);

  final _pageOptions = [
    HomePage(),
    SearchPage(),
    NotificationsPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorfondo,
      appBar: AppBar(
        backgroundColor: colorfondo,
        title: Row(
          children: [
            Transform(
              transform: Matrix4.translationValues(-25.0, 0.0, 0.0),
              child: const Text(
                'Danieska GM',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(-20.0, 2.0, 0.0),
              child: const Text(
                'Modelo',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert_outlined, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(65, 10, 0, 0),
                width: MediaQuery.of(context).size.width * 0.8,
                // height: MediaQuery.of(context).size.height * 0.2,
                child: Image.asset('assets/images/cheerful.png'),
              ),
              Transform(
                transform: Matrix4.translationValues(0.0, 5.0, 0.0),
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  width: MediaQuery.of(context).size.width * 0.35,
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
                    border: Border.all(color: Colors.transparent, width: 3.0),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/users/woman-with-beauty.png',
                    ),
                  ),
                ),
              ),
              Container(
                width: 350,
                margin: EdgeInsets.fromLTRB(140, 95, 0, 0),
                child: Row(
                  children: [
                    Container(
                      width: 89,
                      child: const ListTile(
                        title: Text(
                          'Followers',
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        ),
                        subtitle: Center(
                          child: Text(
                            '7.5K',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    Transform(
                      transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                      child: Container(
                        height: 60,
                        child: const VerticalDivider(
                          color: Colors.grey,
                          thickness: 2,
                          indent: 25,
                          endIndent: 0,
                          width: 8,
                        ),
                      ),
                    ),
                    Container(
                      width: 68,
                      child: const ListTile(
                        title: Text(
                          'Posts',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Center(
                          child: Text(
                            '2.3K',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Transform(
                      transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                      child: Container(
                        height: 60,
                        child: const VerticalDivider(
                          color: Colors.grey,
                          thickness: 2,
                          indent: 25,
                          endIndent: 0,
                          width: 8,
                        ),
                      ),
                    ),
                    Container(
                      width: 89,
                      child: const ListTile(
                          title: Text(
                            'Following',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Center(
                            child: Text(
                              '421',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Transform(
                    transform: Matrix4.translationValues(30.0, 0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: OutlineGradientButton(
                        onTap: () {},
                        backgroundColor: colorfondo,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff8b6ef0),
                            Color(0xff00f9ea),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.bottomRight,
                        ),
                        strokeWidth: 2,
                        child: Container(
                          height: 30,
                          child: Center(
                            child: Text(
                              'SEGUIR',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Transform(
                    transform: Matrix4.translationValues(45.0, 0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: OutlineGradientButton(
                        onTap: () {},
                        backgroundColor: colorfondo,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff8b6ef0),
                            Color(0xff00f9ea),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.bottomRight,
                        ),
                        strokeWidth: 2,
                        child: Container(
                          height: 30,
                          child: Center(
                            child: Text(
                              'MENSAJE',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(60, 0, 20, 0),
                    child: OutlineGradientButton(
                      onTap: () {},
                      backgroundColor: colorfondo,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff8b6ef0),
                          Color(0xff00f9ea),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.bottomRight,
                      ),
                      strokeWidth: 2,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 30,
                            child: Center(
                              child: Image.asset(
                                'assets/iconos/Path.png',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Transform(
                            transform: Matrix4.translationValues(5.0, 0.0, 0.0),
                            child: Container(
                              height: 18,
                              child: Center(
                                child: Image.asset(
                                  'assets/iconos/Path-2.png',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Text(
                'Cero preocupaciones, todo llega, todo cambia, todo pasa. Modelo. Influencer.',style: TextStyle(color: Colors.white),),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.45,
            child: TabBarPublico(),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
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
              title: Padding(padding: EdgeInsets.all(0)),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/iconos/Iconsearch.png',
                color: colorfondobar,
                width: 20,
                alignment: Alignment.topCenter,
              ),
              title: Padding(padding: EdgeInsets.all(0)),
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
