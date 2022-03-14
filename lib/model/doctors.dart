class Doctor{
  late String nameofthedoctor;
  late String categorie;
  late String place;
  late int rating;
  late String image;
  Doctor(this.nameofthedoctor , this.categorie , this.place , this.rating , this.image);
  static List<Doctor> blog(){
    return [
      Doctor('Dr.Ferhati Khalil', 'Pshycologue', 'Sidi Belabbes', 4 , 'assets/images/doc1.jpg'),
      Doctor('Dr.Zerrougui Amjed', 'Radiologues', 'Sidi Belabbes', 4 , 'assets/images/doc2.jpg' ),
      Doctor('Dr.Sakhroui Chiheb', 'Pshyciatres', 'Sidi Belabbes', 4 , 'assets/images/doc3.jpg'),
      Doctor('Dr.Bouzaboudja Bahaa', 'Cardiologues', 'Sidi Belabbes', 4 , 'assets/images/doc4.jpg'),
      Doctor('Dr.Fellah Nassim', 'Pédiatres', 'Sidi Belabbes', 4 , 'assets/images/doc5.jpg'),
      Doctor('Dr.Titouah Yaccine', 'Pshycologue', 'Sidi Belabbes', 4 , 'assets/images/doc6.jpg'),
    ];
  }
  static List<Doctor> blog2(){
    return [
      Doctor('Dr.Ahmed Zakaria', 'Radiologues', 'Batna', 3, 'assets/images/doc7.jpg' ),
      Doctor('Dr.Mustapha Zahdour', 'Pédiatres', 'Alger', 1, 'assets/images/doc13.png'),
      Doctor('Dr.Mohammed Hassan', 'Pshycologue', 'Setif', 2, 'assets/images/doc9.jpg'),
      Doctor('Dr.Hassan Al-Fullaih', 'Pshycologue', 'Jijel', 3, 'assets/images/doc10.png'),
      Doctor('Dr.Ahmed Hamid', 'Pshycologue', 'Bejaia', 3, 'assets/images/doc11.jpg')
    ];
  }

}