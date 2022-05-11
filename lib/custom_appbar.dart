// ignore_for_file: prefer_const_constructors
import 'package:aban_app/parent.dart';
import 'package:flutter/material.dart';
import 'game_page.dart';

class CustomAppBar extends StatefulWidget {
  final String imageLink;
  CustomAppBar({ required this.imageLink});
//String get imageLink => '';
@override
  _CustomAppBar createState() => new _CustomAppBar();
}
class _CustomAppBar extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 20.0,
          ),
          ButtonTheme(
            //minWidth: 90.0,
            height: 30.0,
            child: SizedBox(
              child: RaisedButton(
                //textColor: Color(0xFFFFFFFF),
                color: Color(0xFFFAC963),
                child: Text(
                  "الوالدين",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => parent()),
                );},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(
                      color: Color(0xFF48B5B5),
                    )),
              ),
            ),
          ),
          SizedBox(
            width:300.0,
          ),
          IconButton(
            iconSize: 50,
            onPressed:() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Gamepage()),
              );
            },
            icon: Image.asset('Assets/Nintendoswitchprocontroller.png'),
          ),
          IconButton(
            iconSize: 50,
            onPressed:() {},
            icon: Image.asset('Assets/Usdollarcircled.png'),
          ),
          SizedBox(
            width: 300.0,
          ),
          Text("اسم الطفل"),
          SizedBox(width: 30,),
          CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.white,
              child: Image.asset('Assets/img16.png',
                //'${widget.imageLink}',
                // imageLink,
                  height: 50, width: 50),
          ),
        ],
      ),
    ]);
  }
}