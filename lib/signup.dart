import 'package:flutter/material.dart';
import 'login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);
  @override
  _SignupPage createState() => _SignupPage();
}
class _SignupPage extends State<SignupPage> {
  final _auth = FirebaseAuth.instance;
  bool showProgress = false;
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool emailExists = false;
  late String email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBFCFA),
      body: SingleChildScrollView(
        child: Container(
          //inAsyncCall: showProgress,
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 25,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("انشاء حساب",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff003C47),
                        ),),
                    ],),
                ],
              ),
              Form(
                key: _key,
                child: Column(
                  children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: 550,
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextFormField(
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
                    ],
                  ),
                ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          width: 550,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(height: 10,),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'هذا الحقل مطلوب.';
                  String pattern =
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                  if (!RegExp(pattern).hasMatch(value))
                    return '''يجب أن تكون كلمة المرور 8 خانات على الأقل
                    تتضمن حرفًا كبيرًا ورقمًا ورمزًا.
                    ''';
                  return null;
                },
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value; //get the value entered by user.
                  },
                  decoration: InputDecoration(
                    hintText: "ادخل كلمة المرور",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff299593),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff299593),),
                    ),
                  ),
              ),
            ],
          ),
        ),],
                ),
              ),
              Container(
                width: 250,
                height: 60,
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xff299593),
                  ),
                ),
                child: FlatButton(
                  color: Colors.white,
                  minWidth: double.infinity,
                  onPressed: () async {
                    if (_key.currentState!.validate()) {
                      _key.currentState!.save();
                      print("form submitted.");
                    }
                    setState(() {
                      showProgress = true;
                    });
                    try {
                      final newuser = await _auth.createUserWithEmailAndPassword(
                          email: email, password: password);

                      if (newuser != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()),
                        );
                        setState(() {
                          showProgress = false;
                        });
                      }
                    } catch (e) {}
                  },
                  //elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text('التسجيل',
                    style: TextStyle(
                        color: Color(0xff003C47),
                        fontSize: 25),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  TextButton(
                    child: const Text(
                      'سجل دخولك',
                      style: TextStyle(fontSize: 20,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                  const Text('لديك حساب؟',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff003C47),
                      )),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}