// import 'package:flutter/material.dart';
// import 'package:mini_project/theme.dart';
//
// class Categories extends StatefulWidget{
//   @override
//   _CategoriesState createState() => _CategoriesState();
// }
//
// class _CategoriesState extends State<Categories> {
//   List<String> categories = ["Nike", "Homyped"," Bata"];
//   int selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context){
//     return SingleChildScrollView(
//       padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
//       child: SizedBox(
//         height: 30,
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: categories.length,
//           itemBuilder: (context, index) => buildCategory (index),
//         ),
//       ),
//     );
//   }
//
// Widget buildCategory(int index){
//   return GestureDetector(
//     onTap: (){
//       setState(() {
//         selectedIndex =index;
//       });
//     },
//     child: Padding(
//       padding:  const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget> [
//           Text(
//             categories[index],
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontFamily: "Montserrat",
//               color: selectedIndex == index ? kTextColor : kTextLightColor
//             ),
//           ),
//           Container(
//               margin: EdgeInsets.only(top: kDefaultPaddin / 4), //top padding 5
//               height: 2,
//               width: 50,
//               color: selectedIndex == index ? Colors.black : Colors.transparent,
//           ),
//         ],
//       ),
//     ),
//   );
// }
//
//
//
//
//
//
//
//
//
//
//
// }