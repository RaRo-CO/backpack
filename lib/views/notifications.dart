import 'package:flutter/material.dart';
import 'package:backpack/widget/cardsnotifications.dart';
import 'package:backpack/widget/cardsnotificationsa.dart';
import 'package:backpack/widget/cardsnotificationses.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _SearchListExampleState createState() => new _SearchListExampleState();
}

class _SearchListExampleState extends State<NotificationsPage> {
  Color colorfondo = const Color(0xff1a1a1a);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorfondo,
      appBar: AppBar(
        backgroundColor: colorfondo,
        title: Container(
          alignment: Alignment.topLeft,
          child: Text(
            'Notificaciones',
            style: TextStyle(color: Colors.white),
          ),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Hoy',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                CardsNotifications(),
                Padding(padding: EdgeInsets.all(5)),
                CardsNotifications(),
                Padding(padding: EdgeInsets.all(5)),
                CardsNotifications(),
                Padding(padding: EdgeInsets.all(5)),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text(
                        'Ayer',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Colors.grey,
                    ),
                  ],
                ),
                CardsNotificationsAyer(),
                Padding(padding: EdgeInsets.all(5)),
                CardsNotificationsAyer(),
                Padding(padding: EdgeInsets.all(5)),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text(
                        'Esta semana',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Colors.grey,
                    ),
                  ],
                ),
                CardsNotificationsES(),
                Padding(padding: EdgeInsets.all(5)),
                CardsNotificationsES(),
                Padding(padding: EdgeInsets.all(5)),
                CardsNotificationsES(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
