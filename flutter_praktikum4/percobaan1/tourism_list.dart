import 'package:flutter/material.dart';
import 'package:flutter_praktikum4/detail_screen.dart';
import 'package:flutter_praktikum4/list_item.dart';
import 'package:flutter_praktikum4/model/tourism_place.dart';



class TourismList extends StatefulWidget{
  final List<TourismPlace> doneTourismPlaceList;

  const TourismList({
    Key? key,
    required this.doneTourismPlaceList
  }) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState(doneTourismPlaceList);
}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> doneTourismPlaceList;
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/submarine/submarine.jpg',
      description: 'Surabaya Submarine adalah kapal selam yang dimiliki oleh TNI AL Indonesia. Kapal selam ini merupakan jenis kapal selam diesel-elektrik yang memiliki kemampuan memasuki perairan dangkal dan dalam. Kapal selam ini juga memiliki kemampuan untuk melakukan misi intelijen, perang anti-kapal permukaan, dan pertahanan udara darat. Surabaya Submarine adalah salah satu dari empat kapal selam yang dimiliki oleh TNI AL Indonesia.',
      day: 'Senin - Minggu',
      time: '08.00-20.00',
      ticket: 'Rp.20.000',
      img1: 'assets/images/submarine/submarine.jpg',
      img2: 'assets/images/submarine/sub1.jpg',
      img3: 'assets/images/submarine/sub2.jpg',
      img4: 'assets/images/submarine/sub3.jpg',

    ),
    TourismPlace(
      name: 'Kelenteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/images/klenteng/klenteng.jpg',
      description: 'Klenteng Sanggar Agung adalah sebuah klenteng yang terletak di Surabaya, Jawa Timur, Indonesia. Klenteng ini adalah salah satu tempat ibadah bagi umat Konghucu di Surabaya. Selain sebagai tempat ibadah, klenteng ini juga sering dijadikan sebagai tempat untuk acara pernikahan dan upacara tradisional.',
      day: 'Senin - Minggu',
      time: '08.00-20.00',
      ticket: 'Rp.10.000',
      img1: 'assets/images/klenteng/klenteng.jpg',
      img2: 'assets/images/klenteng/klenteng1.jpg',
      img3: 'assets/images/klenteng/klenteng2.jpg',
      img4: 'assets/images/klenteng/klenteng3.jpg',
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: 'assets/images/sampoerna/sampoerna.jpg',
      description: 'House of Sampoerna adalah sebuah museum yang terletak di Kota Surabaya, Indonesia. Didirikan pada tahun 1932, museum ini dulunya merupakan pabrik rokok yang kemudian diubah menjadi museum pada tahun 2003. Museum ini merupakan salah satu objek wisata yang terkenal di Surabaya dan menyajikan sejarah produksi rokok di Indonesia serta koleksi seni dan budaya yang berkaitan dengan rokok.',
      day: 'Senin - Minggu',
      time: '08.00-20.00',
      ticket: 'Rp.15.000',
      img1: 'assets/images/sampoerna/sampoerna.jpg',
      img2: 'assets/images/sampoerna/sampoerna1.jpg',
      img3: 'assets/images/sampoerna/sampoerna2.jpg',
      img4: 'assets/images/sampoerna/sampoerna3.jpg',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun-alun contong',
      imageAsset: 'assets/images/pahlawan/pahlawan.jpg',
      description: 'Tugu Pahlawan adalah sebuah monumen peringatan yang dibangun untuk menghormati jasa pahlawan dalam perjuangan kemerdekaan Indonesia. Monumen ini terletak di Kota Surabaya dan diresmikan pada tahun 1952 oleh Presiden Soekarno. Tugu Pahlawan memiliki ketinggian 41 meter dan terdiri dari 5 tingkat. Di dalamnya terdapat museum yang memamerkan koleksi sejarah perjuangan Indonesia. Monumen ini menjadi salah satu ikon kota Surabaya dan menjadi destinasi wisata sejarah yang populer di Indonesia.',
      day: 'Senin - Minggu',
      time: '08.00-20.00',
      ticket: 'Rp.30.000',
      img1: 'assets/images/pahlawan/pahlawan.jpg',
      img2: 'assets/images/pahlawan/pahlawan1.jpg',
      img3: 'assets/images/pahlawan/pahlawan2.jpg',
      img4: 'assets/images/pahlawan/pahlawan3.jpg',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/images/sby/sby.jpg',
      description: 'Patung Suroboyo merupakan sebuah patung berupa sepasang tokoh laki-laki yang menjadi simbol kota Surabaya, Indonesia. Patung ini menggambarkan sosok Raden Wijaya dan Suro, dua tokoh legendaris dalam sejarah kota Surabaya. Raden Wijaya merupakan pendiri Kerajaan Majapahit yang kemudian memilih Surabaya sebagai ibu kotanya. Sementara itu, Suro merupakan tokoh mitos yang diyakini sebagai penjaga kota Surabaya. Patung Suroboyo menjadi salah satu ikon kota Surabaya dan sering dijadikan lokasi berfoto oleh wisatawan.',
      day: 'Senin - Minggu',
      time: '08.00-20.00',
      ticket: 'Rp.20.000',
      img1: 'assets/images/sby/sby.jpg',
      img2: 'assets/images/sby/sby1.jpg',
      img3: 'assets/images/sby/sby2.jpg',
      img4: 'assets/images/sby/sby3.jpg',
    ),
    TourismPlace(
      name: 'Monumen Kresek',
      location: 'Madiun',
      imageAsset: 'assets/images/mad/mad.jpg',
      description: 'Monumen Kresek adalah sebuah monumen yang terletak di Madiun, Jawa Timur, Indonesia. Monumen ini didirikan untuk mengenang perjuangan rakyat Madiun dalam merebut kembali kemerdekaan Indonesia dari Belanda pada tahun 1948. Monumen Kresek mengambil namanya dari senjata kresek yang digunakan dalam perjuangan tersebut. Di sekitar monumen terdapat taman yang indah, sehingga monumen ini juga menjadi tempat wisata yang populer di Madiun.',
      day: 'Senin - Minggu',
      time: '08.00-20.00',
      ticket: 'Free',
      img1: 'assets/images/mad/mad.jpg',
      img2: 'assets/images/mad/mad1.jpg',
      img3: 'assets/images/mad/mad2.jpg',
      img4: 'assets/images/mad/mad3.jpg',
    ),
  ];

  _TourismListState(this.doneTourismPlaceList);

  @override
  Widget build(BuildContext context){
    return ListView.builder(itemBuilder: (context, index){
      final TourismPlace place = tourismPlaceList[index];
      return InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return DetailScreen(place: place);
          }));
        },
        child: ListItem(
          place: place,
          isDone: doneTourismPlaceList.contains(place),
          onCheckboxClick: (bool? value){
            setState((){
              if(value!=null){
                value
                    ? doneTourismPlaceList.add(place)
                    : doneTourismPlaceList.remove(place);
              }
            });
          },
        ),
      );
    },
    itemCount: tourismPlaceList.length,
    );
  }
}