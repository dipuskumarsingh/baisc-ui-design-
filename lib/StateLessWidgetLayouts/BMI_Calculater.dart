

// in this layout we make BMI calculator home screen.

//Start
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI calculator',
      home:bmiHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class bmiHomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI',style: TextStyle(color:Colors.white, fontSize: 30),),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.yellow,
        child:Column(
          children: [
            Container(
              width: double.infinity,
                height:300,
                child: Image.asset("assets/images/Icons/Ic_heart_check.png",fit: BoxFit.cover,)), //heart image container
            Container(
              width: double.infinity,
              height: 100,
              child: Text('Healthy',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.green),textAlign:TextAlign.center,),
            ),//healthy text container
            Container(
              width: double.infinity,
              // color: Colors.pink,
              child: Row( //male or female container
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('Male',style: TextStyle(fontSize: 25, color: Colors.black54),),
                      Icon(Icons.male_rounded,size: 75,color: Colors.black54)
                    ],
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Column(
                    children: [
                      Text('Female',style: TextStyle(fontSize: 25,color: Colors.black54),),
                      Icon(Icons.female,size: 75,color: Colors.black54),
                    ],
                  )
                ],
              ),
            ),// male female container
            Container(
              width: double.infinity,
              // color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border.fromBorderSide(),
                    // ),
                    child: Column(
                      children: [
                        Text('Age',style: TextStyle(fontSize: 25,color: Colors.black45),),
                        Text('22',style: TextStyle(fontSize: 35,color: Colors.black87),),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text('Height',style: TextStyle(fontSize: 25,color: Colors.black45),),
                      Text('175',style: TextStyle(fontSize: 35,color: Colors.black87),),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Weight',style: TextStyle(fontSize: 25,color: Colors.black45),),
                      Text('75',style: TextStyle(fontSize: 35,color: Colors.black87),),
                    ],
                  ),
                ],
              ),
            ), //age height weight container
            Container(
              padding: EdgeInsets.symmetric(vertical: 50),
              width: double.infinity,
              height: 151.5,
              color: Color(0xff74b4b9),
              child: Text('Calculator BMI', style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold, color: Color(0xffffffff)),textAlign: TextAlign.center,),
            ) // bottom text container
          ],
        ),
      ),
    );
  }
}