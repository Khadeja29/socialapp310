
import 'package:flutter/material.dart';
import 'package:socialapp310/routes/finishsignup.dart';
import 'package:socialapp310/routes/signup.dart';
import 'package:socialapp310/routes/splashpage.dart';
import 'package:socialapp310/routes/login.dart';
import 'package:socialapp310/routes/welcome.dart';
import 'package:socialapp310/routes/notifications.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  routes: {
    // '/': (context) => SplashScreen(),
    // '/welcome': (context) => Welcome(),
    // '/login': (context) => Login(),
    // '/signup': (context) => SignUp(),
    // '/signupfinish': (context) => FinishSignupPage(),

    '/': (context) => Notifications(),
    // '/signup': (context) => SignUp(),

  } ,
  // home: Login(),
  //initialRoute: '/login',
));
