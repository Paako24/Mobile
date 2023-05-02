import 'package:flutter/material.dart';
import 'package:mini_project/theme.dart';
import 'package:mini_project/model/product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key ? key,
    required this.product,
  }): super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: < Widget > [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: < Widget > [
              Text(
                "Warna",
                style: TextStyle(fontFamily: "Montserrat", color: Colors.black54, fontSize: 15),
              ),
              Row(
                children: < Widget > [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0xFFF8C078)),
                  ColorDot(color: Color(0xFFA29B9B)),
                ],
              ),
            ],
          ),
        ),
      Expanded(
        child: RichText(
          text: TextSpan(
            style: const TextStyle(color: kTextColor),
            children: [
                const TextSpan(
                  text: "Size\n",
                  style: TextStyle(fontFamily: "Montserrat", color: Colors.black54, fontSize: 15),
                  ),
                
                TextSpan(
                  text: "${product.size} cm",
                  style: const TextStyle(fontFamily: "Montserrat", color: Colors.black, fontWeight: FontWeight.w500,fontSize: 25),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    // by default isSelected is false
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
       child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }









}