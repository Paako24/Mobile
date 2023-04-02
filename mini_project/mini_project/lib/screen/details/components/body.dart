import 'package:flutter/material.dart';
import 'package:mini_project/screen/details/components/cart_counter.dart';
import 'package:mini_project/theme.dart';
import 'package:mini_project/model/product.dart';
import 'color_and_size.dart';
import 'description.dart';
import 'product_tittle_with_image.dart';
import 'add.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: 100,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      Description(product: product),
                      SizedBox(height: 50),
                      CartCounter(),
                      SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTittleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }

}