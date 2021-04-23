
import 'package:flutter/material.dart';
import 'package:socialapp310/routes/finishsignup.dart';
import 'file:///C:/Users/HP/Documents/socialapp310/socialapp310/lib/routes/profile/profilepage.dart';
import 'package:socialapp310/routes/signup.dart';
import 'package:socialapp310/routes/splashpage.dart';
import 'package:socialapp310/routes/login.dart';
import 'package:socialapp310/routes/welcome.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  routes: {
    '/': (context) => SplashScreen(),
    '/welcome': (context) => Welcome(),
    '/login': (context) => Login(),
    '/signup': (context) => SignUp(),
    '/signupfinish': (context) => FinishSignupPage(),
    '/profilepage': (context) => ProfileScreen(),

    // '/': (context) => Welcome(),
    // '/signup': (context) => SignUp(),

  } ,
  // home: Login(),
  //initialRoute: '/login',
));
