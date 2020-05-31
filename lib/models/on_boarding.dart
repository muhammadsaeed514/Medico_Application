class OnBoarding {
  String image;
  String title;
  String description;

  OnBoarding({this.image, this.description,this.title});
}

class OnBoardingList {
  List<OnBoarding> _list;

  List<OnBoarding> get list => _list;

  OnBoardingList() {
    _list = [
      new OnBoarding(image: 'images/f1.png', description: 'Get list of best doctor nearby you.',title: 'Search Doctors'),
      new OnBoarding(image: 'images/f-1.png', description: 'Book an appointment with a right doctor.',title: 'Book Appointment'),
      new OnBoarding(image: 'images/undraw_alien_science_nonm.png', description: 'Search and book diagnostic test.',title: 'Book Diagonstic'),
    ];
  }
}
