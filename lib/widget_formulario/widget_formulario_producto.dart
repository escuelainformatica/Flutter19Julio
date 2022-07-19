import 'package:flutter/material.dart';
import 'package:julio19/modelo/producto.dart';

class WidgetFormularioProducto extends StatefulWidget {
  Producto producto;

  WidgetFormularioProducto(this.producto,{Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _WidgetFormularioProducto();
  }

}
class _WidgetFormularioProducto extends State<WidgetFormularioProducto> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: 'Id del Producto',),
          initialValue: widget.producto.idProduct.toString() ,),
        TextFormField(
            decoration: const InputDecoration(labelText: 'Id del Producto',),
            initialValue: widget.producto.name),
        TextFormField(
            decoration: const InputDecoration(labelText: 'Id del Producto',),
            initialValue: widget.producto.price.toString()),
      ],
    );
  }

}