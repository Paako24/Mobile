import 'package:flutter/material.dart';
import 'package:mini_project/theme.dart';
import 'package:mini_project/screen/home/components/body.dart';
import 'package:mini_project/screen/home/components/favorite_list.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  
  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Text(
        'Shoes App',style: TextStyle(
          fontFamily: 'Montserrat', fontWeight: FontWeight.bold, ),),
      actions: <Widget> [
        IconButton(
          onPressed: (){}, 
          icon: const Icon(
            Icons.search,
          ),
        ),

        IconButton(
          onPressed: (){}, 
          icon: const Icon(
            Icons.shopping_basket,
          ),
        ),

        // IconButton(
        //   onPressed: (){
        //     Navigator.push(context, )
        //   }, 
        //   icon: const Icon(
        //     Icons.favorite,
        //   ),
        // ),

        const SizedBox(
          width: kDefaultPaddin ,
        ),
      ],
    );
  }
}
