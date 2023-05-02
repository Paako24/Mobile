import 'package:flutter/material.dart';


class LivinLogin extends StatelessWidget  {

  @override
  Widget build(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Images/background.png"),
          fit: BoxFit.fitWidth,
          ),
      ),
      
      child: Column(
        children: [
          SizedBox(height: 700,),
          buildButtonLogin(),
          SizedBox(height: 15,),
          buttonFooterButton(),

        ],
      ),

    );
  }

  Widget buildButtonLogin(){
    return Container(
      child: Material(
        borderRadius: BorderRadius.circular(45.0),
        color: Colors.blueAccent,
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 15),
          onPressed: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.fingerprint, color: Colors.white, size: 27,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Montserrat",
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
      ),
      ),
    );
  }

  Widget circleButton(String text, Icon icon, Color color){
    return Container(
      constraints: BoxConstraints(maxWidth: 75),
      child: Column(
        children: [
          RawMaterialButton(
            onPressed: (){},
            elevation: 2.0,
            fillColor: color,
            child: icon,
            padding: EdgeInsets.all(13.0),
            shape: CircleBorder(),
          ),
          SizedBox(height: 15,),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget buttonFooterButton(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          circleButton(
            "Satu",
            Icon(Icons.ac_unit, color: Colors.white,),
            Colors.indigo,
          ),
          circleButton(
            "DUa",
            Icon(Icons.ac_unit, color: Colors.white,),
            Colors.indigo,
          ),
          circleButton(
            "Tiga",
            Icon(Icons.ac_unit, color: Colors.white,),
            Colors.indigo,
          ),
          circleButton(
            "EMpat",
            Icon(Icons.ac_unit, color: Colors.white,),
            Colors.indigo,
          ),
        ],
      ),
    );
  }
}