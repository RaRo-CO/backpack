import 'package:backpack/views/perfilpublico.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:readmore/readmore.dart';

class Cards extends StatefulWidget {
  @override
  CardsState createState() => CardsState();
}

class CardsState extends State<Cards> {
  String _description =
      '''Iphone 12 Pro Max smartphone was launched on 13th October 2020. The phone comes with a 6.70-inch touchscreen display with a resolution of 1284x2778 pixels at a pixel density of 458 pixels per inch (ppi). The iPhone 12 Pro Max supports wireless charging, as well as proprietary fast charging.
As far as the cameras are concerned, the iPhone 12 Pro Max on the rear packs a 12-megapixel primary camera with an f/1.6 aperture; a second 12-megapixel camera with an f/2.4 aperture and a third 12-megapixel camera with an f/2.2 aperture. The rear camera setup has autofocus. It sports a 12-megapixel camera on the front for selfies, with an f/2.2 aperture.
iPhone 12 Pro Max based on iOS 14 and packs 128GB of inbuilt storage. The iPhone 12 Pro Max is a dual-SIM (GSM and GSM) smartphone that accepts Nano-SIM and eSIM cards. The iPhone 12 Pro Max measures 160.80 x 78.10 x 7.40mm (height x width x thickness) and weighs 228.00 grams. It was launched in Gold, Graphite, Pacific Blue, and Silver colours. It features an IP68 rating for dust and water protection.''';

  Color colorfondo = const Color(0xff1a1a1a);
  int _counterlike = 0;
  int _counterdislike = 0;
  int _counterheart = 0;

  _incrementCounterLike() {
    setState(() {
      _counterlike++;
    });
  }

  _incrementCounterDisLike() {
    setState(() {
      _counterdislike++;
    });
  }

  _incrementCounterHeart() {
    setState(() {
      _counterheart++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colorfondo,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.65,
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                    alignment: Alignment.center,
                    child: InkWell(
                      child: Image.asset(
                        'assets/images/users/woman-with.png',
                      ),
                      onTap: () {
                        Navigator.push<dynamic>(
                          context,
                          MaterialPageRoute<dynamic>(
                            builder: (BuildContext context) => PerfilPublico(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: ListTile(
                    title: Text(
                      'Danieska GM',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Miami on Vacation',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.more_vert_outlined,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'More',
                    trimExpandedText: 'Less',
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                width: 375,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    'assets/images/fotopostmypack.png',
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            width: 15,
                            margin: EdgeInsets.fromLTRB(16, 0, 5, 0),
                            child: Image.asset('assets/iconos/Iconsms.png')),
                      ),
                      Text(
                        '18 comentarios',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          width: 20,
                          margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
                          child: Image.asset('assets/images/users/black.png'),
                        ),
                        Container(
                          width: 20,
                          margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
                          child: Image.asset(
                              'assets/images/users/beauty-portrait.png'),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
                          width: 20,
                          child: Image.asset('assets/images/users/black.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          '$_counterlike',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Transform.translate(
                          offset: Offset(0, -3),
                          child: Container(
                            width: 15,
                            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: GestureDetector(
                              child: Image.asset(
                                'assets/iconos/like.png',
                                color: Colors.white,
                              ),
                              onTap: () {
                                _incrementCounterLike();
                              },
                            ),
                          ),
                        ),
                        Text(
                          '$_counterdislike',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Transform.translate(
                          offset: Offset(0, 2),
                          child: Container(
                            width: 15,
                            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: GestureDetector(
                              child: Image.asset(
                                'assets/iconos/dislike.png',
                                color: Colors.white,
                              ),
                              onTap: () {
                                _incrementCounterDisLike();
                              },
                            ),
                          ),
                        ),
                        Text(
                          '$_counterheart',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Transform.translate(
                          offset: Offset(0, -2),
                          child: Container(
                            width: 15,
                            margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            child: GestureDetector(
                              child: Image.asset(
                                'assets/iconos/Iconheart.png',
                                color: Colors.white,
                              ),
                              onTap: () {
                                _incrementCounterHeart();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 15,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
