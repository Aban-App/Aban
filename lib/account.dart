import 'package:flutter/material.dart';

class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff003C47),
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Color(0xFF7CC5CB),
        toolbarHeight: 70,
        title: Row(
          children: [
          SizedBox(width: 20.0,),
        RaisedButton(
          //textColor: Color(0xFFFFFFFF),
          color: Color(0xFFFAC963),
          child: Text(
            "الأطفال",
            style: TextStyle(
                fontSize: 25,
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.bold
              // fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {//Navigator.push(context, MaterialPageRoute(builder: (context) => const Gamepage()),);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(
              color: Color(0xFF48B5B5),
            ),),
        ),
      ],),
    ),
      body: Column(
        children:<Widget> [
          SizedBox(height: 40,),
          Center(
            child: Container(
              height: 400,
              width: 400,
              margin: EdgeInsets.only(top: 30, bottom: 20),
              child: Center(child: Column(
                children: [
                  Container(
                    child: Text('حسابي',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFAC963),
                      ),),
                  ),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text('تغيير كلمة السر',
                        style: TextStyle(
                          color: Color(0xff003C47),
                          fontSize: 20,
                        ),),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Colors.teal,
                            width: 2.0,
                          ),
                        ),
                        fixedSize: Size(230, 60),
                        primary: Color(0xFFEBFCFA),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text('مساعدة',
                        style: TextStyle(
                          color: Color(0xff003C47),
                          fontSize: 20,
                        ),),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Colors.teal,
                            width: 2.0,
                          ),
                        ),
                        fixedSize: Size(230, 60),
                        primary: Color(0xFFEBFCFA),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text('تسجيل خروج',
                        style: TextStyle(
                          color: Color(0xff003C47),
                          fontSize: 20,
                        ),),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Colors.teal,
                            width: 2.0,
                          ),
                        ),
                        fixedSize: Size(230, 60),
                        primary: Color(0xffE55C5E),
                      ),
                    ),
                  ),
                ],
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
