import 'package:flutter/material.dart';
import 'package:esiproject/model/doctors.dart';
class DoctorCard extends StatelessWidget {
  final Doctor doc;
  const DoctorCard({Key? key , required this.doc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 8 , bottom:8 ),
      child: InkWell(
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.only(right: 20 , left: 8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(19) ,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Column( // This is The description Of the Card
                        children: [
                          Padding(padding:const EdgeInsets.only(bottom: 8.0 , left: 10) , child: Text(doc.nameofthedoctor , style: const TextStyle(fontSize: 15 , fontWeight: FontWeight.w600),)),
                          Padding(padding:const EdgeInsets.only(bottom: 8.0) , child: Text(doc.categorie , style: const TextStyle(fontSize: 9 , fontWeight: FontWeight.w600),)),
                          Padding(
                              padding:const EdgeInsets.only(bottom: 8.0),
                            child: Row( // This is The Location
                              children: [
                                const Padding(padding:EdgeInsets.only(right: 5) ,child: Image(image: AssetImage('assets/images/LocationLogo.png'))),
                                Text(doc.place , style: const TextStyle(fontWeight: FontWeight.w600 , color: Colors.grey),)
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              children: const [
                                Icon(Icons.star , color: Colors.black, size:20 ,),
                                Icon(Icons.star , color: Colors.black, size:20),
                                Icon(Icons.star , color: Colors.black, size:20),
                                Icon(Icons.star , color: Colors.black, size:20),
                                Icon(Icons.star , color: Colors.grey, size:20),
                              ],
                            ),
                          ),
                          Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.03,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(backgroundColor: Colors.green ,) ,
                                  onPressed: (){},
                                  child:const Text('Reserver' ,style: TextStyle(color: Colors.white , ),) ,
                              ),
                            )
                          )
                        ],
                      ),
                      Container(    //This is The Photo of The Card
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Image(image: AssetImage(doc.image) , fit: BoxFit.cover,),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
