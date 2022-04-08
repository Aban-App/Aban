
import 'package:flutter/material.dart';
import 'main.dart';
import 'login.dart';
import 'lessons_page.dart';

class AddChildPage extends StatefulWidget {
  const AddChildPage({Key? key}) : super(key: key);
  @override
  _AddChildPageWidgetState createState() => _AddChildPageWidgetState();
}
class _AddChildPageWidgetState extends State<AddChildPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFEBFCFA),
        child: SafeArea(
          child: Center(
            child: Column(
              //  crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //row 0 back arrow
                // Row(
                //   children: [ Image.asset('assets/images/back arrow(100 × 100 px).png')],
                // ),
                //row1 ما اسم طفلك
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ما اسم طفلك؟",
                      style: TextStyle(
                        fontSize: 40,
                        color: Color(0xFF003C47),
                        // fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                // row2 textfieald اسم الطفل
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // children: [
                  //   TextField(
                  //     decoration: InputDecoration(
                  //         border: InputBorder.none,
                  //   )
                  //   )
                  // ],
                ),
                // row3 text الشخصية المناسبة
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ما الشخصية المناسبة لطفلك؟",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF003C47),
                        // fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                // row4 to choose avatar
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Wrap(
                        spacing: 25,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 50, //radius is 50
                              backgroundColor: Colors.white,
                              backgroundImage:
                              AssetImage('Assets/img16.png'),
                            ),
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 100,
                              backgroundColor: Colors.white,
                              backgroundImage:
                              AssetImage('Assets/img20.png'),
                            ),
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
                              backgroundImage:
                              AssetImage('Assets/img17.png'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                //row5 add button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: deprecated_member_use
                    ButtonTheme(
                      minWidth: 200.0,
                      height: 50.0,
                      child: RaisedButton(
                        textColor: Color(0xFF003C47),
                        color: Color(0xFFFFFFFF),
                        child: Text(
                          "إضافة",
                          style: TextStyle(
                            fontSize: 27,
                            color: Color(0xFF003C47),
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => PlanetChildPage()));},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(
                              color: Color(0xFF48B5B5),
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}