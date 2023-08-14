import 'dart:io';

import 'package:e_commerce_app/core/exceptions/service_exceptions.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:http/http.dart' as http;

const String BASE_URL = 'fakestoreapi.com';

class ProductApiService {
  static Future<List<ProductModel>?> getAllProducts() async {
    var uri = Uri.https(BASE_URL, 'products');
    try {
      final response = await http.get(uri);
      switch (response.statusCode) {
        case 200:
          List<ProductModel> model = productModelFromJson(response.body);
          return model;
        case 401:
          throw InvalidApiKeyException();
        case 404:
          throw CityNotFoundException();
        default:
          throw UnknownException();
      }
    } on SocketException catch (_) {
      throw NoInternetConnectionException();
    }
  }
}
