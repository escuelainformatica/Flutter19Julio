class Producto {
  int? idProduct;
  String? name;
  int? idProductCategory;
  double? price;

  Producto({this.idProduct, this.name, this.idProductCategory, this.price});

  Producto.fromJson(Map<String, dynamic> json) {
    idProduct = json['IdProduct'];
    name = json['Name'];
    idProductCategory = json['IdProductCategory'];
    price = json['Price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['IdProduct'] = this.idProduct;
    data['Name'] = this.name;
    data['IdProductCategory'] = this.idProductCategory;
    data['Price'] = this.price;
    return data;
  }
}