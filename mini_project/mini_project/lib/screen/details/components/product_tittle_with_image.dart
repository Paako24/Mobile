import 'package:flutter/material.dart';
import 'package:mini_project/theme.dart';
import 'package:mini_project/model/product.dart';

class ProductTittleWithImage extends StatelessWidget {
  const ProductTittleWithImage ({
    Key ? key,
      required this.product,
  }): super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: < Widget > [
          Text(
            product.title,
            style: const TextStyle(fontFamily: "Montserrat", color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
          ),
          // SizedBox(height: 10),
          // Text(
          //   "Harga",
          //   style: TextStyle(fontFamily: "Montserrat", color: Colors.white, fontSize: 25),
          // ),
          // Text(
          //   "RP.${product.price},-",
          //   style: TextStyle(fontFamily: "Montserrat", color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          // ),
          
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "Price\n",
                      style: TextStyle(fontFamily: "Montserrat", color: Colors.white70,fontSize: 20),
                      ),
                    TextSpan(
                      text: "Rp.${product.price},-",
                     style: const TextStyle(fontFamily: "Montserrat", color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Expanded(child: Hero(
                tag: "${product.id}", 
                child: Image.asset(
                  product.image,
                  height: 350,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}