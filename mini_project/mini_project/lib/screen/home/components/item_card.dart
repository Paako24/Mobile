import 'package:flutter/material.dart';
import 'package:mini_project/model/product.dart';
import 'package:mini_project/theme.dart';

class ItemCard extends StatelessWidget{
  final Product product;
  final void Function()? press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Expanded(
              child: Container(
                padding: const EdgeInsets.all(kDefaultPaddin),
                decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(product.image),
                ),
              ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
              child: Text(
                product.title,
                style: const TextStyle(color: kTextColor),
              ),
          ),
          Text(
            "Rp.${product.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }














}
