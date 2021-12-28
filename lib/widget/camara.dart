import 'package:flutter/material.dart';

class CamaraPage extends StatefulWidget {
  final menuScreenContext;
  final bool hideStatus;

  const CamaraPage({required Key key, this.menuScreenContext, required this.hideStatus}) : super(key: key);
  @override
  _CamaraPageState createState() => _CamaraPageState();
}

class _CamaraPageState extends State<CamaraPage> {


  @override
  Widget build(BuildContext context) {

    return Text('Hola Camara');
  }

}