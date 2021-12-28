import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoriasPage extends StatelessWidget {
  Color colorfondo = const Color(0xff1a1a1a);
  Color colorfondobar = const Color(0xffb3b3b3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorfondo,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0), // here the desired height
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: colorfondo,
          flexibleSpace: Stack(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(135, 55, 0, 0),
                width: MediaQuery.of(context).size.width * 0.3,
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
                    'assets/images/fotopostmypack.png',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(135, 160, 0, 0),
                width: MediaQuery.of(context).size.width * 0.3,
                child: Center(
                    child: Text(
                  'Danieska GM',
                  style: TextStyle(color: Colors.white),
                )),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(230, 145, 0, 0),
                width: 30,
                color: Colors.black,
                child: GestureDetector(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/iconos/2.png',
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {},
            color: Colors.white,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert_outlined, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 320, 0),
                        child: Text(
                          'Historias',
                          style: TextStyle(color: colorfondobar),
                        ),
                      ),
                      Divider(
                        height: 15,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Row(
                        children: [
                          Container(
                            //padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            child: ListView(
                              // This next line does the trick.
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                                          border: Border.all(
                                              color: Colors.transparent,
                                              width: 3.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/users/young.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          'Sue',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                                          border: Border.all(
                                              color: Colors.transparent,
                                              width: 3.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/users/seductive-young.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          'Will',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                                          border: Border.all(
                                              color: Colors.transparent,
                                              width: 3.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/users/portrait.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          'Sue',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                                          border: Border.all(
                                              color: Colors.transparent,
                                              width: 3.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/users/fashion.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          'Sue',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                                          border: Border.all(
                                              color: Colors.transparent,
                                              width: 3.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/users/young.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          'Sue',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                                          border: Border.all(
                                              color: Colors.transparent,
                                              width: 3.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/users/young.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          'Sue',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 320, 0),
                        child: Text(
                          'Short',
                          style: TextStyle(color: colorfondobar),
                        ),
                      ),
                      Divider(
                        height: 15,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width,
                            height: 250,
                            child: ListView(
                              // This next line does the trick.
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                  width: 150.0,
                                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      'assets/images/close-up.png',
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                Container(
                                  width: 150.0,
                                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      'assets/images/close-up.png',
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                Container(
                                  width: 150.0,
                                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      'assets/images/close-up.png',
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                Container(
                                  width: 150.0,
                                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      'assets/images/close-up.png',
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                Container(
                                  width: 150.0,
                                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      'assets/images/close-up.png',
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 320, 0),
                        child: Text(
                          'Live',
                          style: TextStyle(color: colorfondobar),
                        ),
                      ),
                      Divider(
                        height: 15,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width,
                            height: 250,
                            child: ListView(
                              // This next line does the trick.
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                  width: 150.0,
                                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      'assets/images/close-up.png',
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                Container(
                                  width: 150.0,
                                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      'assets/images/happy-young.png',
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                Container(
                                  width: 150.0,
                                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      'assets/images/tropical-beach.png',
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                Container(
                                  width: 150.0,
                                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      'assets/images/close-up.png',
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                Container(
                                  width: 150.0,
                                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      'assets/images/close-up.png',
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
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
}
