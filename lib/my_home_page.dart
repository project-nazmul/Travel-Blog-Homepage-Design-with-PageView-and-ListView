import 'package:flutter/material.dart';
import 'custom_widget/custom_listview.dart';
import 'custom_widget/custom_page_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.menu,color: Colors.black,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Travel Blog',style: TextStyle(fontSize: 20),),
            const SizedBox(height: 10,),
            Expanded(flex:2,child: CustomPageView()),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Most Popular'),
                Text('See more'),
              ],
            ),
            const SizedBox(height: 5,),
            Expanded(flex:1,child: CustomListView()),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 5,
                  width: MediaQuery.of(context).size.width/2.5,
                  color: Colors.black87,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
