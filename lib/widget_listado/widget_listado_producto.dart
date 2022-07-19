import 'package:flutter/material.dart';
import 'package:julio19/servicio/producto_rest.dart';

import '../modelo/producto.dart';
import '../widget_listado_fila/widget_listado_fila_producto.dart';

class WidgetListadoProducto extends StatefulWidget {
  List<Producto> productos;

  WidgetListadoProducto(this.productos,{Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WidgetListadoProducto();
  }
}
class _WidgetListadoProducto extends State<WidgetListadoProducto> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.productos.length,
      itemBuilder: (context,fila) {
        return WidgetListadoFilaProducto(widget.productos[fila]);
      },
    );
  }

}