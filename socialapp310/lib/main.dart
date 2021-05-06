import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:socialapp310/routes/homefeed/HomeFeed.dart';
import 'package:socialapp310/routes/finishsignup.dart';
import 'package:socialapp310/routes/profile/editprofile.dart';
import 'package:socialapp310/routes/search/search.dart';
import 'package:socialapp310/routes/notifications/notifications.dart';
import 'package:socialapp310/routes/profile/profilepage.dart';
import 'package:socialapp310/routes/signup.dart';
import 'package:socialapp310/routes/splashpage.dart';
import 'package:socialapp310/routes/login.dart';
import 'package:socialapp310/routes/unknownwelcome.dart';
import 'package:socialapp310/routes/welcome.dart';
import 'package:socialapp310/routes/welcomenofirebase.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context,snapshot){
          if(snapshot.hasError){
            print('Cannot connect to firebase: '+snapshot.error);
            return MaterialApp(
                home:WelcomeViewNoFb()
            );
          }
          if(snapshot.connectionState == ConnectionState.done){
            print('Cannot connect to firebase: '+snapshot.error);
            return MaterialApp(
              home: Welcome(),
              debugShowCheckedModeBanner: false,
              routes: {
                '/': (context) => SplashScreen(),
                '/welcome': (context) => Welcome(),
                '/login': (context) => Login(),
                '/signup': (context) => SignUp(),
                '/signupfinish': (context) => FinishSignupPage(),
                '/notifications': (context) => ActivityScreen(),
                '/homefeed': (context) => HomeFeed(),
                '/profile': (context) => ProfileScreen(),
                '/search' : (context) => Search(),
                '/editprofile' : (context) => EditProfilePage(),
              },
            );
          }
          else {
            print(snapshot.connectionState);
            return MaterialApp( home: UnknownWelcomeFB());
          }

        });
  }
}

/*void main() => runApp(MaterialApp(

      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/welcome': (context) => Welcome(),
        '/login': (context) => Login(),
        '/signup': (context) => SignUp(),
        '/signupfinish': (context) => FinishSignupPage(),
        '/notifications': (context) => ActivityScreen(),
        '/homefeed': (context) => HomeFeed(),
        '/profile': (context) => ProfileScreen(),
        '/search' : (context) => Search(),
        '/editprofile' : (context) => EditProfilePage(),
      },
    ));
*/