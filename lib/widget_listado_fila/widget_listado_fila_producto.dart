import 'package:flutter/material.dart';
import 'package:julio19/paginas/pagina_detalle.dart';

import '../modelo/producto.dart';

class WidgetListadoFilaProducto extends StatefulWidget {
  Producto producto;

  WidgetListadoFilaProducto(this.producto,{Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _WidgetListadoFilaProducto();
  }
}
class _WidgetListadoFilaProducto extends State<WidgetListadoFilaProducto> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PaginaDetalle(widget.producto.idProduct??0)),
          );
        },
        child: ListTile(
          leading: Text(widget.producto.idProduct.toString()),
          title: Text(widget.producto.name??"sin nombre"),
        ),
      ),
    );
  }

}