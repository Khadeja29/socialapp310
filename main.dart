import 'package:flutter/material.dart';
import 'package:socialapp310/routes/splashpage.dart';
import 'package:socialapp310/routes/login.dart';
import 'package:socialapp310/routes/walkthrough.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  routes: {
    '/': (context) => SplashScreen(),
    '/walkthrough' : (context) => WalkThrough(),
    '/login': (context) => Login()

    // '/': (context) => Welcome(),
    // '/': (context) => Login(),
    // '/signup': (context) => SignUp(),

  } ,
  // home: Login(),
  //initialRoute: '/login',
));
