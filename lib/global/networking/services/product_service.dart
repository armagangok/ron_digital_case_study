import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import './base_product_service.dart';
import '../models/product_model.dart';

class ProductService implements BaseProductService {
  Future<List<dynamic>> _getDataFromApi() async {
    try {
      const String _url = 'https://mcuapi.herokuapp.com/api/v1/movies';
      var uri = Uri.parse(_url);
      // log("$uri");
      var response = await http.get(uri);
      // log("response.body" + response.body);
      var decodedResponse = jsonDecode(response.body);
      // log("$decodedResponse");
      print(decodedResponse['data']);
      return decodedResponse['data'];
    } catch (e) {
      log("ERROR ------> $e");
      return [];
    }
  }

  Future<List<ProductModel>> getData() async {
    List<ProductModel> _products = [];

    for (var item in await _getDataFromApi()) {
      _products.add(ProductModel.fromMap(item));
    }

    return _products;
  }
}
