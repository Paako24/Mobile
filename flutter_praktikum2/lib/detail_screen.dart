//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child :Column (
          children: <Widget> [
            Image.asset('assets/image/submarine.jpg'),
            Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  "Surabaya Submarine Monument",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Lobster',
                  ),
                )
            ), //ini judul
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  Column(
                    children: const <Widget> [
                      Icon(Icons.calendar_today),
                      Text('Open Everyday'),
                    ],
                  ),
                  Column(
                    children: const <Widget> [
                      Icon(Icons.access_time_rounded),
                      Text('08:00 - 16.00'),
                    ],
                  ),
                  Column(
                    children: const <Widget> [
                      Icon(Icons.attach_money_rounded),
                      Text('Rp. 10.000,-'),
                    ],
                  ),
                ],
              ),
            ), //ini ikon
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text (
                'Museum inside a decommissioned Russian war submarine with tours & an adjacent park with cafes. Clean and well maintained. CAr park cot 10K, entrance fee 15K/person. You can see KRI Pasopati there, it is a russian whiskey class. You can also watch video about the Indonesian Navy at the building beside the submarine',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Oxygen',
                ),
              ),
            ), //ini deskripsi
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network('https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                      )
                  ),

                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset('assets/image/sub1.jpg'),
                    )
                  ),

                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset('assets/image/sub2.jpg'),
                      )
                  ),

                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset('assets/image/sub3.jpg'),
                      )
                  ),

                ],
              ),
            ), //ini foto
          ],
        ),
      ),
    );
  }
}