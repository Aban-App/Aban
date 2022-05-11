import 'package:aban_app/addChild_page.dart';
import 'package:aban_app/getId.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:aban_app/account.dart';
class parent extends StatefulWidget{
  @override
  _parent createState() => new _parent();
}

class _parent extends State<parent>{
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('Child').snapshots();
  List userChildList = [];
  late TextEditingController controller;
  String newName = '';
  @override
  void initState() {
    super.initState();
    fetchDatabaseList();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff003C47),
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Color(0xFF7CC5CB),
        toolbarHeight: 70,
                title: Row(
                  children: [
                    SizedBox(width: 20.0,),
                    ButtonTheme(
                      //minWidth: 90.0,
                      height: 30.0,
                        child: RaisedButton(
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
                      ),
                    SizedBox(width: 20.0,),
                    ButtonTheme(
                      //minWidth: 90.0,
                      height: 30.0,
                      child: RaisedButton(
                        //textColor: Color(0xFFFFFFFF),
                        color: Color(0xFFFAC963),
                        child: Text(
                          "حسابي",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.bold
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => account()));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(
                            color: Color(0xFF48B5B5),
                          ),),
                      ),
                    ),
                  ],
                ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //SizedBox(height: 20,),
            Container(
              child: Text('أطفالي',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFAC963),
                ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Container(
                      width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          //shape:
                        ),
                        child: Image.asset('Assets/add.png'),
                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AddChildPage()));},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      fixedSize: Size(80, 80),
                      primary: Color(0xff003C47),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                    itemCount: userChildList.length,
                      itemBuilder: (context, index) {
                      return Container(
                          //width: MediaQuery.of(context).size.width * 0.62,
                        child: Card(
                          color: Color(0xFFEBFCFA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Text(userChildList[index]['name'],
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                  ),),
                                subtitle: Text(userChildList[index]['ID'],
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                  ),),
                                leading: CircleAvatar(
                                  radius: 35.0,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(userChildList[index]['image'],
                                      height: 120,
                                      width: 120,
                                      fit:
                                      BoxFit.contain
                                  ),
                                ),
                                trailing: Text('${userChildList[index]['points']}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget> [
                                  IconButton(
                                    icon: Icon(Icons.edit),
                                    onPressed: () async {
                                      Future<String?> openDialog() => showDialog<String>(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: Text('اسم الطفل'),
                                          content: TextField(
                                            autofocus: true,
                                            controller: controller,
                                            // onChanged: (value) {
                                            //   var newName = value;
                                            // },
                                            decoration: InputDecoration(hintText: "ادخل اسم الطفل"),
                                          ),
                                          actions: [
                                            TextButton(
                                              child: Text('تعديل'),
                                              onPressed: () {Navigator.of(context).pop(controller.text);},
                                            )
                                          ],
                                        )
                                      );
                                      final newName = await openDialog();
                                      if (newName == null || newName.isEmpty) return;
                                      setState(() {
                                        this.newName = newName;
                                      });
                                      Future _editName() async {
                                        try {
                                          await  FirebaseFirestore.instance
                                              .collection("Child")
                                              .doc(userChildList[index]['ID'])
                                              .update({"name": newName});
                                        } catch (e){
                                          return false;
                                        }}
                                      _editName();
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => super.widget));
                                    }
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.delete),
                                    onPressed: () {
                                      Future deleteChild() async{
                                      try {
                                      await  FirebaseFirestore.instance
                                          .collection("Child")
                                          .doc(userChildList[index]['ID'])
                                          .delete();
                                      }catch (e){
                                      return false;
                                      }}
                                      deleteChild();
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => super.widget));
                                      // this.setState(() {
                                      //   Navigator.pop(context);
                                      // });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
      );
  }
}