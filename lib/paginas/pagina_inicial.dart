import 'package:flutter/material.dart';
import 'package:julio19/modelo/producto.dart';
import 'package:julio19/widget_listado/widget_listado_producto.dart';
import 'package:julio19/widget_listado_fila/widget_listado_fila_producto_cargando.dart';

import '../servicio/producto_rest.dart';

class PaginaInicial extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PaginaInicial();
  }
}
class _PaginaInicial extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("inicial")),
      body: StreamBuilder<List<Producto>>(
        stream: ProductoRest.listarStream(),
        builder: (context, snap) {
          if(snap.hasError) {
            // error
            return Text("Hay error ${snap.error}");
          }
          if(snap.connectionState!=ConnectionState.done) {
            // no ha cargado los datos
            return ListView.builder(
                itemCount: 30,
                itemBuilder: (context,fila) {
                  return WidgetListadoFilaProductoCargando();
            });
          }
          // datos cargados
          return WidgetListadoProducto(snap.requireData);
        },
      ),
    );
  }

}
