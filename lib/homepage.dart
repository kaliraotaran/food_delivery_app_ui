

import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/ItemsWidget.dart';
import 'package:food_delivery_app/widgets/homeNav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFF232227),           
        body: Padding(

         padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Icon(
                        Icons.search, 
                        color: Colors.white,
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
           const   SizedBox(height: 30,),
             const Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Hot & Fast Food',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 29,
                  fontWeight: FontWeight.w600
                ),
              ),
              ),
           const   SizedBox(height: 3,),
            const  Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Delivers on Time',
                 style: TextStyle(
                  color: Colors.grey, 
                  fontSize: 22,
                ),
              ),
              ),
            const  SizedBox(height: 30,),
             const TabBar(
                isScrollable: true,
                labelStyle: TextStyle(fontSize: 20),
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(text: 'Burger',),
                  Tab(text: 'Pizza',),
                  Tab(text: 'Burritos',),
                  Tab(text: 'Pasta',),

                ],

                ),
                 Flexible(
                  flex: 1,
                  child: TabBarView(
                  children: [
                   ItemsWidget(),
                                     ItemsWidget(),
                    Container(color: Colors.black,),
                    Container(color: Colors.red,),
                  
               
                  ],
                ))
            ],),
          ),
      bottomNavigationBar: homeNav(),
      ),
    );
  }
}