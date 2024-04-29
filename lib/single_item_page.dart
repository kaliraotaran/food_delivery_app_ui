
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/singleitemNav.dart';

class singleItemPage extends StatelessWidget {
  const singleItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232227),
      body: Padding(padding: EdgeInsets.only(top: 25, left: 15 , right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios_new, color: Colors.white,size: 32,),
                ),
                
                InkWell(
                  onTap: (){
                     
                  },
                  child:  Icon(CupertinoIcons.cart_fill, color: Colors.white,size: 32,),
                ),
               
              ],
            ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: Image.asset('assets/bg.png',
                height: MediaQuery.of(context).size.height  /1.8,
                fit: BoxFit.cover,
                ),
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Padding(padding: EdgeInsets.only(right: 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Hot & Fresh Burger', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                          child:Icon(CupertinoIcons.minus, color: Colors.black, size: 20,),
                        ),
                        SizedBox(width: 8,),
                        Text('2', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                        SizedBox(width: 8,),

                        Container(
                          alignment: Alignment.center,
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                          child:Icon(CupertinoIcons.plus, color: Colors.black, size: 20,),
                        )
                      ],
                    )
                  ],),
                  ),
                  SizedBox(height: 10,),
                  Text("we bring you th eburger with cheese served with onion, cold drink and fries.we bring you th eburger with cheese served with onion, cold drink and fries.we bring you th eburger with cheese served with onion, cold drink and fries. ",
                  style: TextStyle(color: Colors.white60, fontSize: 18),
                  )
              ],
            )
      ],),
      ),
      bottomNavigationBar: singleitemNav(),
    );
  }
}