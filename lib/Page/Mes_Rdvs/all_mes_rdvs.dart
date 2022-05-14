import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'constants.dart';

class BodyAllMesRdvs extends StatefulWidget {
  const BodyAllMesRdvs({
    Key? key,
  }) : super(key: key);
  

  @override
  State<BodyAllMesRdvs> createState() => _BodyAllMesRdvs();
}

class _BodyAllMesRdvs extends State<BodyAllMesRdvs> {
  @override
  void initState() {
    getPApp();
    super.initState();
  }

  List<int> disabledIndexv2 = [];
  late var iii;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    if (doctors.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/isEmpty.png',
              scale: 3.5,
            ),
            Text(
              "Hurray! You don't have any appoitments!",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            )
          ],
        ),
      );
    } else {
      return Container(
        color: bcgcolor,
        child: ListView.builder(
            itemCount: doctors.length,
            itemBuilder: (ctx, index) {
              return Container(
                padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  color: maincontainer,
                  shadowColor: Colors.black,
                  elevation: 3,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.fromLTRB(11, 15, 10, 0),
                        child: Row(
                          children: <Widget>[
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/doc4.png'),
                              radius: 32.5,
                            ),
                            SizedBox(width: w * 0.02),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    doctors[index]['DoctorsName'].toString(),
                                    style: const TextStyle(
                                        color: txtcolor, fontSize: 20),
                                  ),
                                  SizedBox(height: h * 0.01),
                                  const Text(
                                    'cardiologue',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(224, 255, 255, 255)),
                                  )
                                ],
                              ),
                            ),
                           
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.none,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: seccontainer,
                        ),
                        //   margin: EdgeInsets.all(10),
                        height: h * 0.070,
                        width: w * 0.875,
                        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.calendar_month,
                                  color: txtcolor,
                                ),
                                const SizedBox(width: 7),
                                Text(
                                  readTimestampDate(doctors[index]['date']),
                                  style: const TextStyle(color: txtcolor),
                                ),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Row(
                              children: [
                                const Icon(
                                  Icons.schedule,
                                  color: txtcolor,
                                ),
                                const SizedBox(width: 7),
                                Text(
                                  '${readTimestampTime(doctors[index]['date'])} '
                                  ,
                                  style: const TextStyle(color: txtcolor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      );
    }
  }

  ////////////////// TIME STAMP TO DATE TIME FOR AFFICHAGE

  String readTimestampDate(Timestamp timestamp) {
    DateFormat format = DateFormat.yMMMMEEEEd();
    return format.format(DateTime.parse(timestamp.toDate().toString()));
  }

  String readTimestampTime(Timestamp timestamp) {
    DateFormat format = DateFormat('HH:mm');
    return format.format(DateTime.parse(timestamp.toDate().toString())) +' - ' + format.format(DateTime.parse(timestamp.toDate().add(const Duration(hours: 1)).toString()));
  }

  
/////////////////////////////////////////////////////////////////// GET doctors for ur appointementS
  List doctors = [];
  CollectionReference doctorsref =
      FirebaseFirestore.instance.collection('Appointments');

  getPApp() async {
    doctorsref
        .where('patientUID', isEqualTo: '43vju27PaOZptGuNQvDC')
        
        .orderBy('date')
        .snapshots()
        .listen((event) {
      setState(() {
        doctors.clear();

        for (var element in event.docs) {
          doctors.add(element.data());
        }
      });
    });
  }

  

  
}
