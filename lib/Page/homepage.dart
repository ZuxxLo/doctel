import 'package:flutter_application_1/Widgets/categoriecard.dart';
import 'package:flutter_application_1/Widgets/doctorcard.dart';
import 'mytitle.dart';
import 'search_input.dart';
import 'widget_header.dart';
import 'package:flutter/material.dart';
import '../Widgets/doctors.dart';
import 'package:flutter_application_1/Widgets/drawer_widget.dart';

class HomePgae extends StatefulWidget {
  const HomePgae({Key? key}) : super(key: key);

  @override
  _HomePgaeState createState() => _HomePgaeState();
}

int index = 0;
List<String> cat = [
  'Géneralistes',
  'Radiologues',
  'Pshyciatres',
  'Cardiologues',
  'Pédiatres'
];
List<String> img = [
  'assets/images/stethoscope.png',
  'assets/images/ct-scan.png',
  'assets/images/brain.png',
  'assets/images/cardiogram.png',
  'assets/images/specialist.png'
];
List<Widget> items = [
  const Image(image: AssetImage('assets/images/accueil.png')),
  const Image(image: AssetImage('assets/images/rendez-vous.png')),
  const Image(
    image: AssetImage('assets/images/profil-de-lutilisateur.png'),
  )
];
final _list = Doctor.blog();
final _list2 = Doctor.blog2();

class _HomePgaeState extends State<HomePgae> {
  // const buttomNavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int selectedIndex = 0;
    List<IconData> data = [
      Icons.home,
      Icons.person_add_alt_1_rounded,
      Icons.list_rounded,
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade50,

      drawer: drawer_widget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: <Widget>[
              SizedBox(
                height: height * 0.23,
                child: const HeaderWidget(200, false, Icons.notification_add),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 50),
                  child: const SearchInput()),
            ]),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MyTitle(title: 'Categories', fontsize: 25),
                    const Padding(padding: EdgeInsets.only(top: 8.0)),
                    SizedBox(
                      height: height * 0.11,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: cat.length,
                          itemBuilder: (context, index) {
                            return CategorieCard(
                                title: cat[index], image: img[index]);
                          }),
                    ),
                    const MyTitle(title: 'Top Doctors', fontsize: 25),
                    SizedBox(
                      height: height * 0.23,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _list.length,
                          itemBuilder: (context, index) {
                            return DoctorCard(doc: _list[index]);
                          }),
                    ),
                    const MyTitle(title: 'Doctors', fontsize: 25),
                    SizedBox(
                        height: height * 0.22,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _list2.length,
                            itemBuilder: (context, index) {
                              return DoctorCard(doc: _list[index]);
                            }))
                  ]),
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(
          fontFamily: 'Montserrat',
        ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: 'Montserrat',
        ),
        selectedFontSize: MediaQuery.of(context).size.width * 0.03,
        unselectedFontSize: MediaQuery.of(context).size.width * 0.03,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/profil-de-lutilisateur.png'),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/home-alt.png'), label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/notes.png'),
              label: 'Appointments'),
        ],
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(20),
      //   child: Material(
      //     elevation: 2,
      //     borderRadius: BorderRadius.circular(40),
      //     color: Colors.white,
      //     shadowColor: const Color.fromRGBO(217, 217, 217, 20),
      //     child: SizedBox(
      //         height: 40,
      //         child: ListView.builder(
      //           scrollDirection: Axis.horizontal,
      //           itemCount: data.length,
      //           padding: const EdgeInsets.symmetric(horizontal: 30),
      //           itemBuilder: (ctx, i) => Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 30),
      //             child: GestureDetector(
      //               onTap: () {
      //                 setState(() {
      //                   selectedIndex = i;
      //                 });

      //               },
      //               child: AnimatedContainer(
      //                 duration: const Duration(milliseconds: 250),
      //                 width: 40,
      //                 child: Icon(
      //                   data[i],
      //                   color: i == selectedIndex ? Colors.blue : Colors.grey,
      //                   size: 35,
      //                 ),
      //               ),
      //             ),
      //           ),
      //         )),
      //   ),
      // ),
    );
  }
}
