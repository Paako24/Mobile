
import 'package:flutter/material.dart';
import 'package:flutter_praktikum4/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child :ListView(children: <Widget>[
          Column (
            children: <Widget> [
              Image.asset(place.imageAsset),
              Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Text(
                    place.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Lobster',
                    ),
                  )
              ), //ini judul
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    Column(
                      children: <Widget> [
                        Icon(Icons.calendar_today),
                        Text(place.day),
                      ],
                    ),
                    Column(
                      children: <Widget> [
                        Icon(Icons.access_time_rounded),
                        Text(place.time),
                      ],
                    ),
                    Column(
                      children: <Widget> [
                        Icon(Icons.attach_money_rounded),
                        Text(place.ticket),
                      ],
                    ),
                  ],
                ),
              ), //ini ikon
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text (
                  place.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ), //ini deskripsi
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset(place.img1),
                        )
                    ),

                    Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset(place.img2),
                        )
                    ),

                    Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset(place.img3),
                        )
                    ),

                    Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset(place.img4),
                        )
                    ),
                  ],
                ),
              ), //ini foto
            ],
          ),
        ]),
      ),
    );
  }
}