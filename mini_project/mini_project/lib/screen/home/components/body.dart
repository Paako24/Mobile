import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/screen/details/details_screen.dart';
import 'package:mini_project/theme.dart';
import 'package:mini_project/model/product.dart';
// import 'package:shop_app/screens/details/details_screen.dart';
import 'package:mini_project/screen/home/components/category.dart';
import 'package:mini_project/screen/home/components/item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [

        // Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal : kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
              ), 
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[index],),
                    ),
                  ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}