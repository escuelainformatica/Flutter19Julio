import 'package:flutter/material.dart';
import 'package:julio19/modelo/producto.dart';
import 'package:julio19/servicio/producto_rest.dart';
import 'package:julio19/widget_formulario/widget_formulario_producto.dart';

class PaginaDetalle extends StatefulWidget {
  int numProducto;

  PaginaDetalle(this.numProducto,{Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PaginaDetalle();
  }

}
class _PaginaDetalle extends State<PaginaDetalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("detalle"),),
      body: StreamBuilder<Producto>(
          stream: ProductoRest.obtenerStream(widget.numProducto),
          builder: (context,snap) {
            if(snap.hasError) {
              return Text("error");
            }
            if(snap.connectionState!=ConnectionState.done) {
              return Text("cargando..");
            }
            return WidgetFormularioProducto(snap.requireData);
          }
      ),
    );
  }

}
