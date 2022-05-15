import 'package:aban_app/game/game.dart';
import 'package:flutter/material.dart';

class Game {
  static int gameValue = 5;
  static int point=0; //to be static later

  void play() {
  }

  bool checkPoint(int point) {
    if (gameValue <= point) {
      return true;
    }
    else {
      return false;
    }
  }

  // void displayGame() {
  //   if (checkPoint(point)) {
  //     //navigate to game
  //     //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>ColorGame()));
  //     //Navigator.push(context, MaterialPageRoute(builder: (context) => ColorGame()));
  //     //update point
  //     updatePoint(point, gameValue);
  //   } else {
  //     //pop up msg
  //     //MyAlert;
  //   }
  // }
  void updatePoint(int point, int gameValue) {
    point -= gameValue;
  }

} //end class
class MyAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: RaisedButton(
        child: Text('Show alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}



showAlertDialog(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text("حسنًا"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // Create AlertDialog

  AlertDialog alert = AlertDialog(
    title: Text("Simple Alert"),
    content: Text("ليس لديك نقاط كافية"),
    actions: [
      okButton,
    ],
  );
showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}