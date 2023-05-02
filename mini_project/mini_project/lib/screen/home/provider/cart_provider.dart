// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:mini_project/model/product.dart';

// class CartProvider with ChangeNotifier {
//   Map<String, Product> _items = {};

//   Map<String, Product> get items {
//     return {..._items};
//   }

//   int get itemCount {
//     return _items.length;
//   }

//   double get totalAmount {
//     var total = 0.0;
//     _items.forEach((key, product) {
//       total += product.price * product.quantity;
//     });
//     return total;
//   }

//   void addItem(String productId, String title, int price) {
//     if (_items.containsKey(productId)) {
//       _items.update(
//         productId,
//         (existingCartItem) => Product(
//           id: existingCartItem.id,
//           title: existingCartItem.title,
//           price: existingCartItem.price,
//           quantity: existingCartItem.quantity + 1, 
//           category: existingCartItem.category, 
//           image: existingCartItem.image, 
//           description: existingCartItem.description, 
//           color: existingCartItem.color, 
//           size: existingCartItem.size,

//         ),
//       );
//     } else {
//       _items.putIfAbsent(
//         productId,
//         () => Product(
//           id: DateTime.now().toString(),
//           title: title,
//           price: price,
//           quantity: 1, 
//           category: category, 
//           color: null, 
//           description: '', 
//           image: '', 
//           size: '',
//         ),
//       );
//     }
//     notifyListeners();
//   }

//   void removeItem(String productId) {
//     _items.remove(productId);
//     notifyListeners();
//   }

//   void clear() {
//     _items = {};
//     notifyListeners();
//   }
// }
