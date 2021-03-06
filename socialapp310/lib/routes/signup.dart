import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:socialapp310/utils/color.dart';
import 'package:socialapp310/utils/styles.dart';
import 'package:socialapp310/utils/dimension.dart';
import 'package:http/http.dart' as http;


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  int attemptCount;
  String email;
  String password;
  String password2;
  String username;
  final _formKey = GlobalKey<FormState>();

  Future<void> signUpUser() async{
    final url = Uri.parse('http://10.0.2.2:5000/register');
    var body ={
      'call': 'signup',
      'email': email,
      'password': password,
    };

    final response = await http.post(
      Uri.http(url.authority, url.path),
      headers: <String, String>{
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
      },
      body: body,
      encoding: Encoding.getByName("utf-8"),
    );

    if(response.statusCode >= 200 && response.statusCode < 300){
      //successful transmission
      Map<String, dynamic> jsonMap = json.decode(response.body);
      showAlertDialog('Sign up',"successful");
      for(var entry in jsonMap.entries) {
        print("${entry.key} ==> ${entry.value}");
      }
    }
    else if(response.statusCode >= 400 && response.statusCode < 500) {

      Map<String, dynamic> jsonMap = json.decode(response.body);
      print("hello im an error");

      for(var entry in jsonMap.entries) {
        print("${entry.key} ==> ${entry.value}");
      }

      showAlertDialog('WARNING', jsonMap['error_msg']);
    }
    else {
      print(response.body.toString());
      print(response.statusCode);
      showAlertDialog('WARNING', 'Response was not recognized');
    }
    print(response.statusCode);
  }

  Future<void> showAlertDialog(String title, String message) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false, //User must tap button
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text(message),
                ],
              ),
            ),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: kAppBarTitleTextStyle,
        ),
        backgroundColor: AppColors.darkpurple,
        centerTitle: true,
        elevation: 0.0,
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: Dimen.regularPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              SizedBox(height: 10.0),
              Center(
                  child: Column(children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(0.1),
                        //child: Image.asset('assets/images/social_like.png', width: 370, height: 370),
                        child:Image(
                          image: AssetImage('assets/images/arrived.png'),
                        )
                    )
                  ])
              ),
              SizedBox(height: 10.0),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: AppColors.lightgrey,
                              filled: true,
                              hintText: 'E-mail',
                              //labelText: 'username',
                              labelStyle: kLabelLightTextStyle,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.darkpurple),
                                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,

                            validator: (value) {
                              if(value.isEmpty) {
                                return 'Please enter your e-mail';
                              }
                              if(!EmailValidator.validate(value)) {
                                return 'The e-mail address is not valid';
                              }
                              return null;
                            },
                            onSaved: (String value) {
                              email = value;
                            },
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16.0,),


                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: AppColors.lightgrey,
                              filled: true,
                              hintText: 'Password',
                              //labelText: 'username',
                              labelStyle: kLabelLightTextStyle,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.darkpurple),
                                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,

                            validator: (value) {
                              if(value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if(value.length < 8) {
                                return 'Password must be at least 8 characters';
                              }
                              return null;
                            },
                            onSaved: (String value) {
                              password = value;
                            },
                          ),
                        ),

                        SizedBox(width: 8.0),

                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: AppColors.lightgrey,
                              filled: true,
                              hintText: 'Confirm Password',
                              //labelText: 'username',
                              labelStyle: kLabelLightTextStyle,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.darkpurple),
                                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,

                            validator: (value) {
                              if(value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if(value.length < 8) {
                                return 'Password must be at least 8 characters';
                              }
                              return null;
                            },
                            onSaved: (String value) {
                              password2 = value;
                            },
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16,),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 60.0,
                            child:OutlinedButton(
                              onPressed: () {

                                if(_formKey.currentState.validate()) {
                                  _formKey.currentState.save();

                                  if(password != password2) {
                                    showAlertDialog("Error", "Passwords don't match");
                                  }
                                  else {
                                    if (_formKey.currentState.validate()) {
                                      _formKey.currentState.save();
                                      // if all are valid then go to success screen
                                      //signUpUser();

                                      Navigator.pushNamed(context, '/signupfinish');
                                    }
                                  }
                                  //
                                  setState(() {
                                    attemptCount += 1;
                                  });

                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(content: Text('Signing up')));
                                }
                              },

                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 12.0),

                                child: Text(
                                  'Sign Up',
                                  style: kButtonDarkTextStyle,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),

                                ),
                                backgroundColor: AppColors.darkpurple,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

