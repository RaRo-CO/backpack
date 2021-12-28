import 'package:flutter/material.dart';

class CardsNotificationsAyer extends StatelessWidget {
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
                        'assets/images/users/seductive-young.png',
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
      ],
    );
  }
}
