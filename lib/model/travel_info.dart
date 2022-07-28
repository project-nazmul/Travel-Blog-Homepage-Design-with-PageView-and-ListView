class TravelInfo  {

  TravelInfo({required this.name,required this.location,required this.imgUrl});
  
  String name;
  String location;
  String imgUrl;
  
  static List<TravelInfo> travelPlaces(){
    return [
      TravelInfo(name: 'Saint Martin', location: 'Teknaf', imgUrl: 'images/t1.jpg'),
      TravelInfo(name: 'Bandorban', location: 'Chittagong', imgUrl: 'images/t2.jpg'),
      TravelInfo(name: 'Sada Pathor', location: 'Shlhet', imgUrl: 'images/t3.jpg'),
      TravelInfo(name: 'Taj Mahal', location: 'India', imgUrl: 'images/t4.jpg'),
      TravelInfo(name: 'Sundarban', location: 'Khulna', imgUrl: 'images/t5.jpg'),
    ];
  }

  static List<TravelInfo> popularPlaces(){
    return [
      TravelInfo(name: 'Saint Martin', location: 'Teknaf', imgUrl: 'images/t1.jpg'),
      TravelInfo(name: 'Bandorban', location: 'Chittagong', imgUrl: 'images/t2.jpg'),
      TravelInfo(name: 'Sada Pathor', location: 'Shlhet', imgUrl: 'images/t3.jpg'),
      TravelInfo(name: 'Taj Mahal', location: 'India', imgUrl: 'images/t4.jpg'),
      TravelInfo(name: 'Sundarban', location: 'Khulna', imgUrl: 'images/t5.jpg'),
    ];
  }
}
