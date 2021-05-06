

import 'package:flutter/material.dart';

class WelcomeViewNoFb extends StatelessWidget {
  const WelcomeViewNoFb({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("FireBase Failed"),
      ),
    );
  }
}
