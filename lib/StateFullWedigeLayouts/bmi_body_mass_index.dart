

// In this program we make BMI calculator using stateful wedigt

// start
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'bmi',
      home: bmiHomeScreen(),
    );
  }
}

class bmiHomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return bimcalculColculator();
  }
}
class bimcalculColculator extends State<bmiHomeScreen>{
  TextEditingController weight = TextEditingController();
  TextEditingController height = TextEditingController();
  String totalBmi = "0";
  String ImgPath = "";
  Color bgcolor = Colors.yellow; // here we make global variable
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(

      ),
      backgroundColor:bgcolor,  // here we giving the value
      body: Container(
        margin: EdgeInsets.only(top: 20,left: 20,right: 20),
        child: Column(
            children: [
              Center(child: Text('BMI CALCULATOR', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),)),
              SizedBox(height: 20,),
              TextField(
                controller: weight,
                keyboardType:  TextInputType.number,
                decoration: InputDecoration(
                    label: Text('Height in feet',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(width: 2,),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2,color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
              SizedBox(height: 50,),
              TextField(
                controller: height,
                keyboardType:  TextInputType.number,
                decoration: InputDecoration(
                    label: Text('Weight in KG',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(width: 2,),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2,color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 50,),
              Text('Total BMI',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(height: 30,),
              Container(width: double.infinity,height: 60,decoration: BoxDecoration(
                border:Border.all(width: 2,),
                borderRadius: BorderRadius.circular(10),
              ),
                child: Center(child: Text('${totalBmi}',style: TextStyle(fontSize: 40),)),
              ),
              // TextField(
              //   controller: height,
              //   keyboardType:  TextInputType.number,
              //   decoration: InputDecoration(
              //       hintText: 'BMI',
              //       enabledBorder:OutlineInputBorder(
              //           borderSide: BorderSide(width: 2,),
              //           borderRadius: BorderRadius.circular(10)
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //           borderSide: BorderSide(width: 2,color: Colors.blue),
              //           borderRadius: BorderRadius.circular(10),
              //       )
              //   ),
              // ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){   // here we pass the all logic which find the value of BMI
                var wt = double.parse(weight.text.toString());
                var ht = int.parse(height.text.toString());
                num total = wt/ (ht * 0.3048);
                totalBmi = "${total.toStringAsFixed(3)}";
                if (total == total){
                  bgcolor = Colors.yellow;  // here we passed the value , which is made in globle value.
                  ImgPath = "assets/gym_girl.jpeg";
                }
                setState(() {

                });
              }, child: Text('Calculate', style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,  color: Colors.blue),)),
              ImgPath!=""? Image.asset(ImgPath):Container(),  // this is used for show background image using condaition
            ],
          ),
      ),
    );

  }
}