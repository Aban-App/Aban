// ignore_for_file: prefer_const_constructors
import 'package:aban_app/childLogin.dart';
import 'package:aban_app/parent.dart';
import 'package:flutter/material.dart';
import 'game_page.dart';

class CustomAppBar extends StatefulWidget {
  CustomAppBar({Key? key, name, image}) : super(key: key);
@override
  _CustomAppBar createState() => new _CustomAppBar();
}
class _CustomAppBar extends State<CustomAppBar> {
  var image;
  var name;
  //var image = getCurrentImage();
  // late final ChildLogin data;
  // CustomAppBar({this.data});
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
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => parent()),);},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(
                      color: Color(0xFF48B5B5),
                    )),
              ),
            ),
          ),
          SizedBox(
            width:400.0,
          ),
          IconButton(
            iconSize: 50,
            onPressed:() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Gamepage()),);
            },
            icon: Image.asset('Assets/Nintendoswitchprocontroller.png'),
          ),
          SizedBox(
            width: 400.0,
          ),
          Text(name??'سارة'),
          SizedBox(width: 30,),
          CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.white,
              child: Image.asset(image?? 'Assets/img17.png',
                  height: 50, width: 50),
          ),
        ],
      ),
    ]);
  }
}