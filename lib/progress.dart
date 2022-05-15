import 'dart:ui';
import 'package:flutter/material.dart';

class progress extends StatefulWidget {
  const progress({Key? key}) : super(key: key);

  @override
  State<progress> createState() => _progressState();
}

class _progressState extends State<progress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff003C47),
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Color(0xFF7CC5CB),
        toolbarHeight: 70,
        title: Row(
          children: [
            SizedBox(width: 20.0,),
            SizedBox(width: 20.0,),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            SizedBox(height: 30.0,),
            Text("مستوى طفلك",
            style: TextStyle(
              fontSize: 50,
              color: Color(0xffE55C5E),
            ),),
            Text("الدروس",
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
              ),),
            Text("النقاط",
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
              ),),

          ],
        ),
      ),
    );
  }
}
