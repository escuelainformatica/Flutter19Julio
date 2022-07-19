import 'dart:math';

import 'package:flutter/material.dart';


class WidgetListadoFilaProductoCargando extends StatefulWidget {
  WidgetListadoFilaProductoCargando({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _WidgetListadoFilaProductoCargando();
  }
}
class _WidgetListadoFilaProductoCargando extends State<WidgetListadoFilaProductoCargando> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          color: Colors.black12,
          width: 70,
        ),
        title: Container(
          color: Colors.black12,
          height: 20,
          width: 200,
        ),
      ),
    );
  }

}