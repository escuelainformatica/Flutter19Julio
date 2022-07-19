import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import '../modelo/producto.dart';

class ProductoRest {
  static Future<Producto> obtener(int id) async {
    Producto prod = Producto();
    // http://158.101.30.194/testcli/examples/oraclevm2/Product/get/1
    var url = Uri.http(
        '158.101.30.194', '/testcli/examples/oraclevm2/Product/get/$id', {});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var mapaRespuesta =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      prod = Producto.fromJson(mapaRespuesta);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
    return prod;
  }
  static Stream<Producto> obtenerStream(int id) async* {
    Producto prod = Producto();
    // http://158.101.30.194/testcli/examples/oraclevm2/Product/get/1
    var url = Uri.http(
        '158.101.30.194', '/testcli/examples/oraclevm2/Product/get/$id', {});
    await new Future.delayed(const Duration(seconds : 3));
    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var mapaRespuesta =
      convert.jsonDecode(response.body) as Map<String, dynamic>;
      prod = Producto.fromJson(mapaRespuesta);
      yield prod;
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  static Future<List<Producto>> listar() async {
    List<Producto> prods = [];
    // http://158.101.30.194/testcli/examples/oraclevm2/Product/get/1
    var url = Uri.http(
        '158.101.30.194', '/testcli/examples/oraclevm2/Product/listall', {});
    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var listado = convert.jsonDecode(response.body) as List<dynamic>;
      prods = listado.map((p) => Producto.fromJson(p)).toList();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
    return prods;
  }

  static Stream<List<Producto>> listarStream() async* {
    List<Producto> prods = [];
    // http://158.101.30.194/testcli/examples/oraclevm2/Product/get/1
    var url = Uri.http(
        '158.101.30.194', '/testcli/examples/oraclevm2/Product/listall', {});
    // Await the http get response, then decode the json-formatted response.
    //await new Future.delayed(const Duration(seconds : 3));
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var listado = convert.jsonDecode(response.body) as List<dynamic>;
      prods = listado.map((p) => Producto.fromJson(p)).toList();
      yield prods;
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
