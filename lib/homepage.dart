import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:esiproject/widgets/categoriecard.dart';
import 'package:esiproject/widgets/doctorcard.dart';
import 'package:esiproject/widgets/mytitle.dart';
import 'package:esiproject/widgets/search_input.dart';
import 'package:flutter/material.dart';
import 'model/doctors.dart';

class HomePgae extends StatefulWidget {
  @override
  _HomePgaeState createState() => _HomePgaeState();
}
int index = 0;
List <String> cat = [
  'Géneralistes',
  'Radiologues',
  'Pshyciatres',
  'Cardiologues',
  'Pédiatres'
];
List <String> img = [
  'assets/images/stethoscope.png',
  'assets/images/ct-scan.png',
  'assets/images/brain.png',
  'assets/images/cardiogram.png',
  'assets/images/specialist.png'
];
List <Widget> items = [
  const Image(image: AssetImage('assets/images/accueil.png')),
  const Image(image: AssetImage('assets/images/rendez-vous.png')),
  const Image(image: AssetImage('assets/images/profil-de-lutilisateur.png'),)
  
];
final _list = Doctor.blog();
final _list2 = Doctor.blog2();
class _HomePgaeState extends State<HomePgae> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 20),
        body: SafeArea(
        child: Padding(
        padding: const EdgeInsets.all(10.0),
    child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
    height: MediaQuery.of(context).size.height * 0.1,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30)
    ),
    child: const SearchInput()
    ),
    const MyTitle(title: 'Categories', fontsize: 25),
    const Padding(padding:EdgeInsets.only(top: 8.0)),
    Container(
    height:MediaQuery.of(context).size.height * 0.15,
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: cat.length,
    itemBuilder: (context , index){
    return CategorieCard(title: cat[index], image: img[index]);
    }
    ),
    ),
    const MyTitle(title: 'Top Doctors', fontsize: 25),
    Container(
    height: MediaQuery.of(context).size.height * 0.3,
    width: double.infinity,
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: _list.length ,
    itemBuilder: (context , index){
    return DoctorCard(doc: _list[index]);
    }),
    ),
    const MyTitle(title: 'Doctors', fontsize: 25),
    Container(
    height: MediaQuery.of(context).size.height * 0.3,
    width: double.infinity,
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: _list2.length ,
    itemBuilder: (context , index) {
      return DoctorCard(doc: _list2[index]);
    }))
    ]
    ),
    ),
    )
    ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.transparent,
        backgroundColor: Colors.white,
        items: items,
        onTap: (index){},
        index: index ,
        height: MediaQuery.of(context).size.height * 0.08,

      ) ,
    );
    }
  }
