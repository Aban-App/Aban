import 'dart:ui';

import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEBFCFA),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              height: MediaQuery.of(context).size.height - 50,
              width: double.infinity,
              child: Column(children: [
                Container(
                margin: EdgeInsets.fromLTRB(10, 50, 10, 75),
                width: 440,
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0xff003C47),
                  image: DecorationImage(
                    image: AssetImage(
                      "Assets/back.png"
                    ),
                    fit: BoxFit.cover
                  )
                ),
                child: Center(
                  child: Text("مرحبا بكم في تطبيق ابان",
                  style: TextStyle(
                    height: 3,
                    color: Colors.redAccent,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
                pageButton(
                  text: "التسجيل",
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                ),
                pageButton(
                    text: "تسجيل الدخول",
                    press: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                )
              ],),
            ),
          ),
        )
    );
  }
}

class pageButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const pageButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = Colors.white,
    this.textColor = const Color(0xff003C47),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 60,
      width: 260,
      margin: EdgeInsets.only(top: 30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          color: Colors.white,
          onPressed: press,
          child: Text(text,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),),
        ),
      ),
    );
  }
}


