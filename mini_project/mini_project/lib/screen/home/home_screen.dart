import 'package:flutter/material.dart';
import 'package:mini_project/theme.dart';
import 'package:mini_project/screen/home/components/body.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  
  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Shoes App',style: TextStyle(
          fontFamily: 'Montserrat', fontWeight: FontWeight.bold, ),),
      actions: <Widget> [
        IconButton(
          onPressed: (){}, 
          icon: Icon(
            Icons.search,
          ),
        ),

        IconButton(
          onPressed: (){}, 
          icon: Icon(
            Icons.shopping_basket,
          ),
        ),

        SizedBox(
          width: kDefaultPaddin ,
        ),
      ],
    );
  }
}
