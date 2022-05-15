// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class WriteD extends StatelessWidget {
  //const WriteD({Key? key}) : super(key: key);
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
        body: Container(
          color: Color(0xFFEBFCFA),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Column(
                    // spacing: 20,
                    // direction:Axis.vertical,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 3,
                                color:Color(0xFF299593)
                            ),
                          ),
                          child: Image.asset('Assets/dal16.gif',
                              height: 250, width: 250)),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: SizedBox(
                          width: 150, //wrap button with sizedBox to define width
                          child: RaisedButton(
                            color: Color(0xFF299593),
                            child: Image.asset(
                              'Assets/camera.png',
                              height: 50,
                              width: 50,
                            ),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ));
  }
}