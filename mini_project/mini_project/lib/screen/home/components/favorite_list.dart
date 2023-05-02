// import 'package:flutter/material.dart';
// import 'package:mini_project/model/product.dart';
// import 'package:mini_project/screen/home/provider/favorite_provider.dart';
// import 'package:mini_project/screen/details/details_screen.dart';
// import 'package:provider/provider.dart';
// +
// class FavoriteList extends StatelessWidget {
//   const FavoriteList({
//     Key? key
//   }) : super (key: key);

//   @override
//   Widget build(BuildContext context){
//     final List<Product> thisFavoriteList = 
//       Provider.of<ThisFavoriteProvider>(
//         context,
//         listen : false,
//       ).thisFavoriteList;



//      return Scaffold(
//       appBar: AppBar(
//         title: const Text('Favorite Item'),
//       ),
//       body: ListView.builder(
//           itemBuilder: (context, index){
//             final Product product = thisFavoriteList[index];
//             return InkWell(
//               onTap: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context){
//                   return DetailsScreen(product: product);
//                 }));
//               },
//                 child : Card(
//                   color: Colors.white60,
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget> [
//                         Expanded(
//                           flex: 1,
//                           child: Image.asset(product.image),
//                         ),
//                         Expanded(
//                             flex: 2,
//                             child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child : Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisSize: MainAxisSize.min,
//                                       children: <Widget>[
//                                         Text(
//                                           product.title,
//                                           style: const TextStyle(fontSize: 16.0),
//                                         ),
//                                         const SizedBox(
//                                           height: 10,
//                                         ),
//                                         Text(product.description),
//                                       ],
//                                 ),
//                             ),
//                         ),
//                       const Icon(Icons.done_outline),
//                     ],
//                   ),
//                 ),
//             );
//           },
//         itemCount: thisFavoriteList.length,
//       ),
//     );
//   }


// }