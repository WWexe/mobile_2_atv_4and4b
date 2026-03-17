import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:product_app/data/models/product_model.dart';

class ProductRemoteDatasource {
  Future<List<ProductModel>> getProducts() async {
    final response = await http.get(
      Uri.parse("https://fakestoreapi.com/products"),
    );

    final List data = jsonDecode(response.body);
    return data.map((json) => ProductModel.fromJson(json)).toList();
  }
}
