// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:aban_app/getId.dart';
import 'package:aban_app/lessons_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChildLogin extends StatefulWidget {
  const ChildLogin({Key? key}) : super(key: key);
  @override
  _ChildLoginWidgetState createState() => _ChildLoginWidgetState();
}

class _ChildLoginWidgetState extends State<ChildLogin> {
  List userChildList = [];
  void initState() {
    super.initState();
    fetchDatabaseList();
  }
  fetchDatabaseList() async {
    dynamic result = await userInfo().getChildList();

    if (result == null) {
      print('لايوجد بيانات');
    } else {
      setState(() {
        userChildList = result;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF67B3B4),
          toolbarHeight: 70,
          title: Padding(
            padding: EdgeInsets.all(50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonTheme(
                  minWidth: 130.0,
                  height: 50.0,
                  child: RaisedButton(
                    //textColor: Color(0xFFFFFFFF),
                    color: Color(0xFFFAC963),
                    splashColor: Color(0xFFd3d3d3),
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
                Text('مرحبا بكم يا أطفال',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color(0xffFFFFFF),
                      // fontFamily: Cairo
                    ))
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            Image.asset(
              'Assets/img15.png',
              fit: BoxFit.cover,
            ),
            Center(
              child: Wrap(
                spacing: 100,
                children: [
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: userChildList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => PlanetChildPage()));},
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 150,
                                height: 125,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  border: Border.all(
                                    color: Color(0xFFFAC963),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(70),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(height: 7,),
                                      CircleAvatar(
                                        radius: 35.0,
                                        backgroundColor: Colors.white,
                                        child: Image.asset(userChildList[index]['image'],
                                            height: 120,
                                            width: 120,
                                            fit:
                                            BoxFit.contain),
                                ),
                                    Text(userChildList[index]['name'],
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFFFAC963),
                                          fontWeight: FontWeight.bold
                                        // fontWeight: FontWeight.bold,
                                      ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ],
        ));
  }
}