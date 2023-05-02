import 'package:flutter/material.dart';
import 'package:mini_project/model/product.dart';
import 'package:mini_project/theme.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key ? key,
    required this.product,
  }): super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
        child: Row(
          
          children: < Widget > [
            const SizedBox(height: 200),
            Container(
              margin: const EdgeInsets.only(right: kDefaultPaddin),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: product.color,
                ),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.shopping_cart_checkout,
                ),
                onPressed: () {},
              ),



            ),
            
            SizedBox(
              height: 70,
              width: 320,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                  ),
                  backgroundColor: product.color,
                ), onPressed: () {},
                child: Text(
                  "Buy  Now".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ), )
          ],
        ),
    );
  }
}