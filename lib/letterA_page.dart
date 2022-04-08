// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'main.dart';
import 'lessons_page.dart';

class LessonPageA extends StatelessWidget {
  const LessonPageA({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          backgroundColor: Color(0xFF7CC5CB),
          toolbarHeight: 70,
          // leading: RaisedButton(
          //               textColor: Color(0xFFFFFFFF),
          //               color: Color(0xFFFAC963),
          //               child: Text(
          //                 "الوالدين",
          //                 style: TextStyle(
          //                   fontSize: 27,
          //                   color: Color(0xFF003C47),
          //                   // fontWeight: FontWeight.bold,
          //                 ),
          //               ),
          //               onPressed: () {},
          //               shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(30.0),
          //                   side: BorderSide(
          //                     color: Color(0xFF48B5B5),
          //                   )),
          //             ),
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
                            decoration: BoxDecoration(color: Colors.white
                              //shape:
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
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
                            decoration: BoxDecoration(color: Colors.white
                              //shape:
                            ),
                            child: Image.asset(
                                'Assets/alif.png') //صورة الكتب
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
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