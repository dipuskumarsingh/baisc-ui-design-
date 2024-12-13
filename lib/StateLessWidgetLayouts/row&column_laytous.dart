

// making layout design using Row and Column
// Start

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'layouts',
      home:homeScreen(),
    );
  }
}
class homeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row and Column Layouts'),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2,color: Colors.grey),
        ),
        height: 450,
        width: 1005,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              width: 300,
                // color: Colors.orange,
              child: Column(
                children: [
                  SizedBox(     // Sizebox is used for give space between the two container
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,   // its used for cover all area which was given parent body.
                    decoration: BoxDecoration(
                      color: Color(0xffe5e6e8),
                      border: Border.all(width: 1.5)
                    ),
                    child: Center(child: Text("Strowberry Pavlova",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffe5e6e8),
                      border: Border.all(width: 1.5)
                    ),
                    child: Text('The one thing that sets this strawberry cake apart from others? Reduce fresh strawberry puree down and add to the best white cake batter.This strawberry cake completely blew me away. After years of mediocre from-scratch strawberry cakes, my expectations were pretty low. It was time to taste test my efforts. Biting into the first pastel-pink forkful was the moment of truth…',style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffe5e6e8),
                      border: Border.all(width: 1.5 ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.black54,size: 15 ,),  //This is used for take icons.its also porvide its properyt.
                            Icon(Icons.star, color: Colors.black54,size: 15,),
                            Icon(Icons.star, color: Colors.black54,size: 15,),
                            Icon(Icons.star, color: Colors.black54,size: 15,),
                            Icon(Icons.star, color: Colors.black54,size: 15,),
                          ],
                        ),
                        Text('170 Reviwes',style: TextStyle(fontSize: 12),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container (
                    padding: EdgeInsets.symmetric(vertical: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffe5e6e8),
                      border: Border.all(width: 1.5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.kitchen_outlined,color: Colors.green,size: 15,),
                            Text('PREP',style:TextStyle(fontSize: 16,),),
                            Padding(
                              padding: EdgeInsets.only(top: 10),   // this used for use padding extra in widget(using wrap with container.
                            child: Text('25 Mints',style:TextStyle(fontSize: 13))),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.timer,color: Colors.green,size: 15,),
                            Text('COCK',style:TextStyle(fontSize: 16,),),
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text('1 hour',style:TextStyle(fontSize: 13))),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.restaurant,color: Colors.green,size: 15,),
                            Text('FEEDS',style:TextStyle(fontSize: 16,),),
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text('4-5',style:TextStyle(fontSize: 13))),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              ),
            Container(
              width: 700,
              color: Colors.green,
              child: Image.asset("assets/images/Bg_Chocolate-Strawberry-Cake.jpg",fit: BoxFit.cover,),
            )
          ],
        ),
      ),
    );
  }
}