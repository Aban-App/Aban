// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aban_app/learn_b.dart';
import 'package:aban_app/write_b.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'lessons_page.dart';
import 'custom_appbar.dart';

class LessonPageB extends StatefulWidget {
  const LessonPageB({Key? key}) : super(key: key);
  @override
  _LessonPageB createState() => new _LessonPageB();
}
class _LessonPageB extends State<LessonPageB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            brightness: Brightness.light,
            backgroundColor: Color(0xFF7CC5CB),
            toolbarHeight: 70,
            title: CustomAppBar(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20.0),
              ),
            ),
        ),
        body: SafeArea(
          child: Container(
            color: Color.fromRGBO(235, 252, 250, 100),
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //اكتب الحرف
                  ElevatedButton(
                    child: Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: Colors.white,
                                width: 5,
                              ),
                            ),
                            child: Image.asset(
                                'Assets/img2.png') //صورة الرمسام
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          ' اكتب الحرف',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {Navigator.push( context, MaterialPageRoute(builder: (context) => WriteB()),);},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Color(0xFFfac963),
                            width: 2.0,
                          ),
                        ),
                        fixedSize: Size(250, 300),
                        primary: Color(0xFFfac963),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20),
                        textStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ), //end col
                  SizedBox(
                    width: 100,
                  ),
                  //اكتشف الحرف
                  ElevatedButton(
                    child: Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: Colors.white,
                                width: 5,
                              ),
                            ),
                            child: Image.asset(
                              'Assets/baa.png',
                            ) //صورة الكتب
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          ' اكتشف الحرف',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LearnB()));},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Color(0xFFfac963),
                            width: 2.0,
                          ),
                        ),
                        fixedSize: Size(250, 300),
                        primary: Color(0xFFfac963),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20),
                        textStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}