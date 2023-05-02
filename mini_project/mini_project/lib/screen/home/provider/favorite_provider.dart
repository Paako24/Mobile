import 'package:flutter/foundation.dart';
import 'package:mini_project/model/product.dart';

class ThisFavoriteProvider extends ChangeNotifier{
  List<Product> get thisFavoriteList => _thisFavoriteList;
  final List<Product> _thisFavoriteList = [];

  void complete(Product product, bool isFavorite){
    isFavorite
        ? _thisFavoriteList.add(product)
        : _thisFavoriteList.remove(product);
    notifyListeners();
  }
}