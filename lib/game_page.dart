//Game PAGE
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'CustomAppBarGamePage.dart';

class Gamepage extends StatefulWidget {
  const Gamepage({Key? key}) : super(key: key);
  @override
  _GamepageWidgetState createState() => _GamepageWidgetState();
}

class _GamepageWidgetState extends State<Gamepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Color(0xFF7CC5CB),
        toolbarHeight: 70,
        title: CustomAppBarGamePage(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          ),
        ),
      ),
      body: Container(
          color: Color.fromRGBO(235, 252, 250, 100),
          alignment: Alignment.center,
          child: Center(
              child: Padding(
                padding: EdgeInsets.all(50.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Image.asset('Assets/img19.jpg',
                                height: 220, width: 350),
                          ),
                          SizedBox(
                            width: 200,
                            child: MaterialButton(
                              color: Color(0xFF299593),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              onPressed: () {},
                              child: Text(
                                "ألعب 5",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ]),
              ))),
    );
  }
}