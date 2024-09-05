import 'package:flutter/material.dart';
import 'package:task3_05/components/card.dart';

import '../components/gallery_card.dart';
import '../components/verifying_card.dart';

class FirstScreen extends StatelessWidget {
  late final String name = "Mary Smith";
  late final String number = "415-555-1212";
  late String numberOfAction = "18";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              SizedBox(width: 20,),
              IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined,size: 30),),
            ],
          ),
          CircleAvatar(
            backgroundImage: AssetImage("images/profile.jpg"),
            radius: 50,
          ),
          Text(
            "$name",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.sms,
                color: Colors.deepPurple,
              ),
              Text(" SMS: $number"),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyCard(
                  color: Colors.deepPurple,
                  unclaimedNumber: "2",
                  text: "Unclaimed"),
              MyCard(
                  color: Colors.indigo,
                  unclaimedNumber: "\$2,880",
                  text: "Monthly Earn"),
            ],
          ),
          SizedBox(height: 20,),

          Row(
           // mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              SizedBox(width: 20,),
              Text("Action Required",style: TextStyle(fontSize: 17)),
             Spacer(),
              Container(
padding: EdgeInsets.all(7),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.indigo,),
                child: Text("$numberOfAction",
                    style: TextStyle(color: Colors.white,fontSize: 15,)),


              ),

              SizedBox(width: 20,),

            ],
          ),
          SizedBox(height: 10,),

          VerifyingCard(),
          Padding(

            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Gallery",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17)),
                MaterialButton(
                  onPressed: () {},
                  child: Text("See all"),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GalleryCard(
                imagePath: "images/image1.jpg",
                text1: "Slouching towards",
                text2: "Oil spray Point",
              ),
              GalleryCard(
                imagePath: "images/image2.jpeg",
                text1: "King Grin",
                text2: "Oil on corwos",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
