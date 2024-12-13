

// In this Program we make tip Calculator

// start
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tip calculator',
      home:tipCalculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class tipCalculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return myTipCalculator();
  }
}
class myTipCalculator extends State<tipCalculator>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Tip Calculator'),
       backgroundColor: Colors.blueAccent,
     ),
     body: Container(width: double.infinity,padding: EdgeInsets.symmetric(horizontal: 10),
     child: Column(children: [Row(children: [Container(width: 100, height: 100,color: Colors.orange,),Image.asset('assets/images/Icons/Ic_magice_cap.png'),
     ],)
     ],),
     ),
   );
  }
}