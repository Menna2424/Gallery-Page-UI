

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
Color color ;
String unclaimedNumber ;
String text;


MyCard({required this.color,required this.unclaimedNumber,required this.text});

@override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color,

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("$unclaimedNumber",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20)),
          SizedBox(height: 5,),
          Text("$text",style: TextStyle(color: Colors.white)),

        ],

      ),

    );
  }
}
