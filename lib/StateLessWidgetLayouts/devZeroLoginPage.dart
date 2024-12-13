
// In this program we are going to create DEV ZERO LOGIN PAGE

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
      title: 'Dev zero',
      home: homeScreen(),
    );
  }
}

class homeScreen extends StatelessWidget{
  TextEditingController email = TextEditingController();
  TextEditingController passwors = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       margin: EdgeInsets.only(top: 50),
    width: double.infinity,
    height: double.infinity,
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Column(
           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:[
           Row(children: [Image.asset("assets/images/Icons/logoDevZero-removebg-preview.png", width: 250,),],),
           Text("Login",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),),SizedBox(height: 10,),
           Text('We suggest using the email address you use at work.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff504e4e)),),
           SizedBox(height: 30,),
           TextField(
             controller: email,
             keyboardType: TextInputType.emailAddress,
             decoration: InputDecoration(
               label: Text('E-mail',style: TextStyle(fontSize: 22),),
               suffixIcon: Icon(Icons.email),
               enabledBorder:OutlineInputBorder(
                 borderSide: BorderSide(width: 2 ,color: Color(0xff9f9f9f)),
                 borderRadius: BorderRadius.circular(10)
               ),
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(width: 2, color: Colors.blue),
                 borderRadius: BorderRadius.circular(10)
               )
             ),
           ),
             SizedBox(height: 30,),
             TextField(
               controller: passwors,
               keyboardType: TextInputType.visiblePassword,
               obscureText: true,
               obscuringCharacter: '*',
               decoration: InputDecoration(
                 label: Text('Password',style: TextStyle(fontSize: 22),),
                 suffixIcon: Icon(Icons.remove_red_eye_rounded),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(width: 2, color: Color(0xff9f9f9f)),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(width: 2, color: Colors.blue),
                   borderRadius: BorderRadius.circular(10)
                 )
               ),
             ),
             TextButton(onPressed: (){
               print('forget passwords');
             }, child: Padding(
               padding: const EdgeInsets.only(left: 211),
               child: Text('Forget password',style: TextStyle(fontSize: 18),),
             ),),
             Container(width: 400, height:55 , decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(10)),
             child: Center(child: Text('Login',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),),
             SizedBox(height: 30,),
             Text('OR',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color(0xff98999c)),),SizedBox(height: 30,),
             InkWell(onTap: (){
               print("Continue whit google");
             },
               child: Container(width: 400,height: 55,
                 decoration: BoxDecoration(
                   // color: Color(0xffa3a3a3),
                   borderRadius: BorderRadius.circular(10),
                   border: Border.all(color:Color(0xff939292),width: 2),
                 ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 50),
                   child: Row(children: [Image.asset("assets/images/Icons/google.png",width: 30,height: 30,),Text('  Continue whit Google',style: TextStyle(fontSize: 22) ),],),
                 )),
             ),
             SizedBox(height: 30,),
             InkWell(onTap: (){
               print("Continue with GitHub");
             },
               child: Container(width: 400,height: 55,
                   decoration: BoxDecoration(
                     // color: Color(0xffa3a3a3),
                     borderRadius: BorderRadius.circular(10),
                     border: Border.all(color:Color(0xff939292),width: 2),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 50),
                     child: Row(children: [Image.asset("assets/images/Icons/github.png",width: 30,height: 30,),Text('  Continue whit GitHub',style: TextStyle(fontSize: 22) ),],),
                   )),
             ),
             SizedBox(height: 30,),
             Center(
               child: Row(children: [
                 Text("You dont have an acoount yet?",style: TextStyle(fontSize: 22),),
                 TextButton(onPressed: (){
                   print('Sing Up');
                 }, child: Text('Sign up',style: TextStyle(fontSize: 22,color: Colors.blueAccent),)),
               ],),
             )
         ],),
       ),
    )
     );
  }
}