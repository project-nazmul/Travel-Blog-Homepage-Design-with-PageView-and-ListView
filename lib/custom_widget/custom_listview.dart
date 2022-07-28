import 'package:flutter/material.dart';
import '../model/travel_info.dart';

class CustomListView extends StatelessWidget {
  CustomListView({Key? key}) : super(key: key);

  final List popularPlaces = TravelInfo.popularPlaces();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      clipBehavior: Clip.none,
      scrollDirection: Axis.horizontal,
      itemCount: popularPlaces.length,
      itemBuilder: (context, index) {
        var popularPlace = popularPlaces[index];
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(popularPlace.imgUrl)
                  )
              ),
              margin: const EdgeInsets.only(right: 10),
              width: 100,
            ),
            Positioned(bottom:25,left:10,child: Text(popularPlace.name,style: const TextStyle(color: Colors.white,fontSize: 12),)),
            Positioned(bottom:10,left:10,child: Text(popularPlace.location,style: const TextStyle(color: Colors.white,fontSize: 10),)),

          ],
        );
    },
    );
  }
}
