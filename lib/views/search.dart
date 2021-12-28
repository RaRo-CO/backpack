import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchListExampleState createState() => new _SearchListExampleState();
}

class _SearchListExampleState extends State<SearchPage> {
  final globalKey = new GlobalKey<ScaffoldState>();
  final myController = TextEditingController();
  Color colorfondo = const Color(0xff1a1a1a);
  Color colorfondobar = const Color(0xffb3b3b3);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorfondo,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ),
                hintText: 'BUSCAR',
                suffixIcon: Container(
                  child: Image.asset('assets/iconos/Iconsearch.png',
                      color: colorfondobar),
                  width: 10,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                hintStyle: TextStyle(color: Colors.white),
              ),
              controller: myController,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
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
                            'PERSONAS',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(12, 0, 5, 0),
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
                            'FOTOS',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(12, 0, 10, 0),
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
                            'VIDEOS',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: ListView(
              children: [
                Column(
                  children: <Widget>[
                    Container(
                      child: Center(
                        child: Text(
                          'MUSICA',
                          style: TextStyle(color: colorfondobar),
                        ),
                      ),
                    ),
                    Divider(
                      height: 15,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //Center Row contents horizontally,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/music.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                              Image.asset('assets/images/online-music.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                              Image.asset('assets/images/music.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/online-music.png'),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Center(
                        child: Text(
                          'ARTE',
                          style: TextStyle(color: colorfondobar),
                        ),
                      ),
                    ),
                    Divider(
                      height: 15,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //Center Row contents horizontally,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/music.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/online-music.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/music.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/online-music.png'),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Center(
                        child: Text('MODELOS',
                          style: TextStyle(color: colorfondobar),),
                      ),
                    ),
                    Divider(
                      height: 15,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //Center Row contents horizontally,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/music.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/online-music.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/music.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/online-music.png'),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Center(
                        child: Text('ARTISTAS',
                          style: TextStyle(color: colorfondobar),),
                      ),
                    ),
                    Divider(
                      height: 15,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //Center Row contents horizontally,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/music.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/online-music.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/music.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/online-music.png'),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Center(
                        child: Text('NOTICIAS',
                          style: TextStyle(color: colorfondobar),),
                      ),
                    ),
                    Divider(
                      height: 15,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //Center Row contents horizontally,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/music.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/online-music.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/music.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child:
                          Image.asset('assets/images/online-music.png'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
