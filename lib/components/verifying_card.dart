import 'package:flutter/material.dart';

class VerifyingCard extends StatelessWidget {
  const VerifyingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white, //boxShadow:
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,

            decoration: BoxDecoration(shape: BoxShape.circle,boxShadow: [BoxShadow(
              color: Colors.white10.withOpacity(0.2),
              spreadRadius: 0.2,
              blurRadius: 0.2,


            )]),
            child: Icon(Icons.task_alt, color: Colors.green),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10,),
                  Text(
                    "Verify Art Profile",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 150,),

                  Text("1hr", style: TextStyle(color: Colors.grey)),
                ],
              ),
              SizedBox(height: 5,),
              Text("New art piece profile requars your verefication",style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
