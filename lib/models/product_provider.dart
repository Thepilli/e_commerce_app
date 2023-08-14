import 'package:flutter/foundation.dart';
import 'package:e_commerce_app/models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  ProductModel? _productModel;

  ProductModel? get productModel => _productModel;

  setProductModel(ProductModel product) {
    _productModel = product;
    notifyListeners();
  }
}
