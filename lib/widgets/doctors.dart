class Doctor{
  late String nameofthedoctor;
  late String categorie;
  late String place;
  late int rating;
  late String image;
  Doctor(this.nameofthedoctor , this.categorie , this.place , this.rating , this.image);
  static List<Doctor> blog(){
    return [
      Doctor('Dr.Ferhati Khalil', 'Pshycologue', 'Sidi Belabbes', 4 , 'assets/images/doc4-c.png'),
      Doctor('Dr.Zerrougui Amjed', 'Radiologues', 'Sidi Belabbes', 4 , 'assets/images/Doc2-c.svg' ),
      Doctor('Dr.Sakhroui Chiheb', 'Pshyciatres', 'Sidi Belabbes', 4 , 'assets/images/doc4.svg'),
      Doctor('Dr.Bouzaboudja Bahaa', 'Cardiologues', 'Sidi Belabbes', 4 , 'assets/images/doc5.svg'),
      Doctor('Dr.Fellah Nassim', 'Pédiatres', 'Sidi Belabbes', 4 , 'assets/images/doc6-c.svg'),
      Doctor('Dr.Titouah Yaccine', 'Pshycologue', 'Sidi Belabbes', 4 , 'assets/images/doc7.svg'),
    ];
  }
  static List<Doctor> blog2(){
    return [
      Doctor('Dr.Ahmed Zakaria', 'Radiologues', 'Batna', 3, 'assets/images/doc8.svg' ),
      Doctor('Dr.Mustapha Zahdour', 'Pédiatres', 'Alger', 1, 'assets/images/doc9.svg'),
      Doctor('Dr.Mohammed Hassan', 'Pshycologue', 'Setif', 2, 'assets/images/doc11.svg'),
      Doctor('Dr.Hassan Al-Fullaih', 'Pshycologue', 'Jijel', 3, 'assets/images/doc4-c.svg'),
      Doctor('Dr.Ahmed Hamid', 'Pshycologue', 'Bejaia', 3, 'assets/images/doc7-c.svg')
    ];
  }

}