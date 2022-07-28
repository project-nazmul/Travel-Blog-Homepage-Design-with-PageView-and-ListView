import 'package:flutter/material.dart';
import '../model/travel_info.dart';

class CustomPageView extends StatelessWidget {
  CustomPageView({Key? key}) : super(key: key);
  final List places = TravelInfo.travelPlaces();
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      clipBehavior: Clip.none,
      itemCount: places.length,
      itemBuilder: (context, index) {
        var place = places[index];
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(place.imgUrl))),
            ),
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  margin: EdgeInsets.only(
                      top: constraints.maxHeight / 1.5, bottom: 10),
                  color: Colors.white.withOpacity(0.5),
                );
              },
            ),
            Positioned(
                bottom: 40,
                left: 20,
                child: Text(
                  place.name,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
                bottom: 20,
                left: 20,
                child: Text(
                  place.location,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )),
            const Positioned(
              bottom: -22,
              right: 50,
              child: CircleAvatar(
                backgroundColor: Colors.deepOrange,
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
