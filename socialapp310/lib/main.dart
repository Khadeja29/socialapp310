
import 'package:flutter/material.dart';
import 'package:socialapp310/routes/HomeFeed.dart';
import 'package:socialapp310/routes/finishsignup.dart';
import 'package:socialapp310/routes/search/search.dart';
import 'package:socialapp310/routes/signup.dart';
import 'package:socialapp310/routes/splashpage.dart';
import 'package:socialapp310/routes/login.dart';
import 'package:socialapp310/routes/welcome.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  routes: {
    '/': (context) =>  HomeFeed(),//SplashScreen(),
    '/welcome': (context) => Welcome(),
    '/login': (context) => Login(),
    '/signup': (context) => SignUp(),
    '/signupfinish': (context) => FinishSignupPage(),
    '/homefeed': (context) => HomeFeed(),
     '/search' : (context) => Search(),

    // '/': (context) => Welcome(),
    // '/signup': (context) => SignUp(),

  } ,
  // home: Login(),
  //initialRoute: '/login',
));
