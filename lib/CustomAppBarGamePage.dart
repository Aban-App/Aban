// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CustomAppBarGamePage extends StatelessWidget {
  const CustomAppBarGamePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 50.0,
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
                onPressed: () {},
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
            onPressed:() {},
            iconSize: 50,
            icon: Image.asset('Assets/Usdollarcircled.png'),
          ),
          SizedBox(
            width: 300.0,
          ),
          Text("سارة"),
          SizedBox(width: 30,),
          CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.white,
              child: Image.asset('Assets/img17.png', height: 50, width: 50)
          )
        ],
      ),
    ]);
  }
}