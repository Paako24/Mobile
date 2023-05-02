import 'package:flutter/material.dart';
import 'package:mini_project/theme.dart';

class Kosong extends StatelessWidget{
  const Kosong({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: buildAppBar(),
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

        const SizedBox(
          width: kDefaultPaddin ,
        ),
      ],
    );
  }
}
