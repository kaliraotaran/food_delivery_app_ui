

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeNav extends StatelessWidget {
  const homeNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color:   Color(0xFF232227),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.4), spreadRadius: 1, blurRadius: 8 )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.mail,color: Colors.white,size: 35,),
          Icon(Icons.favorite_outline,color: Colors.white,size: 35,),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffeffb322),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Icon(CupertinoIcons.cart_fill, color: Colors.white,size: 30,),
          ),
          Icon(Icons.notifications,color: Colors.white,size: 35,),
          Icon(Icons.person,color: Colors.white,size: 35,),


        ],
      ),
    );
  }
}