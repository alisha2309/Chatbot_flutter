import 'package:ERM/Chatbot.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'SignUp.dart';
import 'LoginPage.dart';
import 'Schedule.dart';
import 'ScheduleNext.dart';
// import 'package:http/http.dart' as http;
// import 'dart:async';

void main() => runApp(App());
//String url = "https://education-resource-management.herokuapp.com/";

class App extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      
      theme: ThemeData(
        primaryColor: Color(0xFFFFFFFF),
        fontFamily: "Ubuntu",

      ),
      initialRoute: 'SignIn',
      routes: {
        'SignIn':(context)=>LoginPage(),
         'SignUp':(context)=>SignUp(),
         'Schedule':(context)=>Schedule(),
         'ScheduleNext':(context)=>ScheduleNext(),
         'HomePage':(context)=> Dashboard(),
         'Chatbot':(context)=> Chatbot(),
         
      },
      
      
    );
  }
}


 