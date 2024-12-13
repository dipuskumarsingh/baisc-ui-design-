

// in this program we make a add calculator

// start
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'simple add calculator',
      home: addCalculotar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class addCalculotar extends StatefulWidget{
@override
  State<StatefulWidget> createState() {
  return simpleAddCalculotar();
  }
}
class simpleAddCalculotar extends State<addCalculotar>{
  TextEditingController firstNumber = TextEditingController();
  TextEditingController secondNumber = TextEditingController();
  TextEditingController total = TextEditingController();
  String result = "0";  //here we create global variable
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator',style: TextStyle( color: Color(0xffffffff)),),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xffe4f2f8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Text('Only Addiation Calculotar',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: firstNumber,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('Number',style: TextStyle(fontSize: 22,color: Colors.blue),),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ), // first number textFiled design
              SizedBox(
                height: 25,
              ),
              TextField(
                controller: secondNumber,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.blue
                    ),
                  ),
                  label: Text('Number',style: TextStyle(fontSize: 22,color: Colors.blue),)
                ),
              ), // Second number textFiled design
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 70 ),
                child: Row(
                  children: [
                    // Text('=',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    SizedBox(
                      width: 171,
                      height: 50,
                      child: ElevatedButton(onPressed: (){
                        int num1=int.parse(firstNumber.text.toString());  // to convert int to string
                        int num2=int.parse(secondNumber.text.toString());
                        int value=num1+num2;
                        setState(() {
                          result=value.toString();
                        });
                      },style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))), //here we decorate the button.
                          child: Text('ADD',style: TextStyle(fontSize: 22, color: Colors.white),textAlign: TextAlign.center,)),
                    ),
                  ],
                ),
              ),
              TextField(
                enabled: false,
                controller: total,
                decoration: InputDecoration(

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.green
                    ),
                  ),
                  label: Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Text(result,style: TextStyle(fontSize: 30,color: Colors.black),),
                  )
                ),
                keyboardType: TextInputType.none,
              ), // total textFiled design
            ],
          ),
        ),
      ),
    );
  }
  }