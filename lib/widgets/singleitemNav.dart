

import 'package:flutter/material.dart';

class singleitemNav extends StatelessWidget {
  const singleitemNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.red,
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
          children: [
            Text('Total Price', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),),

            Text('\$69.50', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),)

          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(20)
          ),
          child: Row(children: [
            Text('Buy Now', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),)
          ],),
        )
      ],),
    );
  }
}