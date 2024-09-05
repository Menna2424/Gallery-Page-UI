import 'package:flutter/material.dart';

class GalleryCard extends StatelessWidget {
  String imagePath;
  String text1;
  String text2;

  GalleryCard(
      {required this.imagePath, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          width: 150,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imagePath,
                  height: 100,
                  fit: BoxFit.cover,
                  width: 130,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text1),
                  SizedBox(
                    height: 5,
                  ),
                  Text(text2, style: TextStyle(color: Colors.deepPurple)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 120,
                height: 25,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Buy Now", style: TextStyle()),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )

//       Column(
//
//          children: [
//
//            Container(
//              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
//               child: Image.asset("$imagePath"),
//
//            ),
//            Text(text1,style: TextStyle(fontWeight: FontWeight.bold),),
//            Text(text2,style: TextStyle(color: Colors.deepPurple),),
// Container(
//
//     //width: 80,
//   height: 20,
//     decoration: BoxDecoration(color: Colors.indigo,borderRadius: BorderRadius.circular(20)),
//     child: MaterialButton(onPressed: (){},child: Text("Buy Now"),textColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),))
//
//          ],
//
//        ),

        );
  }
}
