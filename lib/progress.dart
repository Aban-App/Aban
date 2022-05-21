import 'dart:ui';
import 'package:aban_app/getId.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class progress extends StatefulWidget {
  const progress({Key? key}) : super(key: key);

  @override
  State<progress> createState() => _progressState();
}

class _progressState extends State<progress> {
  userInfo  i = userInfo();
  late var parentId = i.getCurrentUID();
  String childPoint = '';
  Future<String> getCurrentChild() async {
    var collection = FirebaseFirestore.instance.collection('parent').doc('$parentId').collection('currentprogress');
    var docSnapshot = await collection.doc('childid').get();
    Map<String, dynamic> data = docSnapshot.data()!;
    var childID = data['id'];
    var coll = FirebaseFirestore.instance.collection('parent').doc('$parentId').collection('child');
    var docsnap = await coll.doc('$childID').get();
    Map<String, dynamic> data1 = docsnap.data()!;
    String points = await data1['points'].toString();
      setState(() {
      childPoint = points;
      print(childPoint);
      });
    // ste();
    // setState(() {
    //   childPoint = points;
    //   print(childPoint);
    //   //Navigator.of(context).pop(childPoint);
    // });
    return points;
  }
  late var point = getCurrentChild();
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6FFFF),
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Color(0xFF7CC5CB),
        toolbarHeight: 70,
        title: Row(
          children: [
            SizedBox(width: 20.0,),
            SizedBox(width: 20.0,),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            SizedBox(height: 30.0,),
            Text("مستوى طفلك",
            style: TextStyle(
              fontSize: 50,
              color: Color(0xffE55C5E),
            ),),
            Container(
              child: Image.asset('Assets/grad.png'),
              height: 300,
              width: 300,
            ),
            Text("النقاط المكتسبة",
              style: TextStyle(
                fontSize: 50,
                color: Color(0xFF003C47),
              ),),
            SizedBox(height: 20,),
            Text('${childPoint}',
              style: TextStyle(
                fontSize: 50,
                color: Color(0xFF003C47),
              ),),
          ],
        ),
      ),
    );
  }
}
