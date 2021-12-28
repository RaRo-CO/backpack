import 'package:flutter/material.dart';

class CardsNotifications extends StatelessWidget {
  Color colorfondocard = const Color(0xff2c2b2b);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          borderOnForeground: true,
          color: colorfondocard,
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Image.asset(
                        'assets/images/users/stylish.png',
                        width: 50,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: ListTile(
                      title: Text(
                        'Inverness McKenzie liked your posts',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        '8 min ago',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 10,
          child: Container(
            child: Image.asset(
              'assets/iconos/Oval.png',
              width: 15,
            ),
          ),
        ),
      ],
    );
  }
}
