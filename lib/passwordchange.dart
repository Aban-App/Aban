import 'dart:ui';
import 'package:aban_app/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CheckParent extends StatefulWidget {
  const CheckParent({Key? key}) : super(key: key);
  @override
  _CheckParentWidgetState createState() => _CheckParentWidgetState();
}

class _CheckParentWidgetState extends State<CheckParent> {
  late String email;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    showInSnackBar("تم ارسال بريد الكتروني لاعادة تعيين كلمة المرور");
  }
  void showInSnackBar(String value) {
    _scaffoldKey.currentState?.showSnackBar(new SnackBar(
        content: new Text(value)
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Color(0xFFEBFCFA),
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //SizedBox(height: 10,),
                Text("أدخل البريد الإلكتروني لاعادة تعيين كلمة المرور",
                    style: TextStyle(
                      fontSize: 50,
                      color: Color(0xff003C47),
                      // fontFamily: Cairo
                      fontWeight: FontWeight.bold,
                    )),
                Container(
                  //margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  width: 550,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) return 'هذا الحقل مطلوب.';
                      String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                      if (!RegExp(pattern).hasMatch(value))
                        return 'عنوان البريد الإلكتروني غير صالح.';
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      email = value; //get the value entered by user.
                      //validateEmail(value);
                    },
                    decoration: InputDecoration(
                      hintText: "ادخل بريدك الإلكتروني",
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff299593),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff299593),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(height: 15, width: 15,
                    child: Text(errorMessage, style: TextStyle(fontSize: 20, color: Colors.red),),),
                ButtonTheme(
                  minWidth: 300.0,
                  height: 50.0,
                  child: RaisedButton(
                    textColor: Color(0xFF003C47),
                    color: Color(0xFFFFFFFF),
                    child: Text(
                      "تغيير كلمة المرور",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF003C47),
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Future resetPassword() async {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) => Center(child: CircularProgressIndicator()),
                        );
                        try{
                        await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
                        showInSnackBar('تم ارسال بريد الكتروني لاعادة تعيين كلمة المرور');
                        Navigator.of(context).popUntil((route) => route.isFirst);
                      } on FirebaseAuthException catch(e) {
                          print(e);
                          setState(() {
                            errorMessage = e.message!;
                          });
                         // Navigator.of(context).pop();
                          //showInSnackBar(e.message);
                        }
                    };
                      resetPassword();
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(
                          color: Color(0xFF48B5B5),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
