import 'dart:io';

import 'package:e_commerce_app/core/exceptions/service_exceptions.dart';
import 'package:e_commerce_app/models/user_model.dart';
import 'package:http/http.dart' as http;

const String BASE_URL = 'api.escuelajs.co';

class UserApiService {
  static Future<List<UserModel>?> getAllUsers() async {
    var uri = Uri.https(BASE_URL, 'api/v1/users');
    try {
      final response = await http.get(uri);
      switch (response.statusCode) {
        case 200:
          List<UserModel> model = userModelFromJson(response.body);
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
