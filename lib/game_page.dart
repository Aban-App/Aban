//Game PAGE
// ignore_for_file: prefer_const_constructors
import 'package:aban_app/game/game.dart';
import 'package:aban_app/game/gameClass.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'CustomAppBarGamePage.dart';

class Gamepage extends StatefulWidget {
  const Gamepage({Key? key}) : super(key: key);
  @override
  _GamepageWidgetState createState() => _GamepageWidgetState();
}

class _GamepageWidgetState extends State<Gamepage> {
  AssetsAudioPlayer audioPlayer =
  AssetsAudioPlayer();
  Game i = Game();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Color(0xFF7CC5CB),
        toolbarHeight: 70,
        title: CustomAppBarGamePage(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          ),
        ),
      ),
      body: Container(
          color: Color.fromRGBO(235, 252, 250, 100),
          child: Padding(
            padding: EdgeInsets.all(40.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(45),
                        child: Image.asset('Assets/img19.jpg',
                            height: 500, width: 550),
                      ),
                      SizedBox(
                        width: 200,
                        height: 70,
                        child: MaterialButton(
                          color: Color(0xFF299593),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () {
                            final gameValue = 5;
                            getCurrentUID() {
                              final FirebaseAuth auth = FirebaseAuth.instance;
                              final User? user = auth.currentUser;
                              final uid = user!.uid;
                              return uid;
                            }
                            var parentId = getCurrentUID();
                            getCurrentChild() async {
                              var collection = FirebaseFirestore.instance.collection('parent').doc('$parentId').collection('current');
                              var docSnapshot = await collection.doc('childid').get();
                              Map<String, dynamic> data = docSnapshot.data()!;
                              var childID = data['id'];
                              var coll = FirebaseFirestore.instance.collection('parent').doc('$parentId').collection('child');
                              var docsnap = await coll.doc('$childID').get();
                              Map<String, dynamic> data1 = docsnap.data()!;
                              var points = data1['points'];
                              print(points);
                              updatePoint(int point, gameValue) async {
                                if (point >= gameValue){
                                  point -= 5;
                                try {
                                  await  FirebaseFirestore.instance.collection('parent').doc('$parentId').collection('child')
                                      .doc('$childID')
                                      .update({"points": point});
                                } catch (e){
                                  return false;
                                }
                                  audioPlayer.open(Audio('Assets/audio/gameInstruction.mp3'),
                                      autoStart: true);
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ColorGame()));
                                } else {
                                  showGeneralDialog(
                                    barrierLabel: 'label',
                                    barrierDismissible: true,
                                    barrierColor: Colors.black.withOpacity(0.5),
                                    transitionDuration: Duration(milliseconds: 300),
                                    context: context,
                                    transitionBuilder: (context, anim1, anim2,
                                        child) {
                                      return SlideTransition(
                                        position: Tween(
                                            begin: Offset(0, 1), end: Offset(0, 0))
                                            .animate(anim1),
                                        child: child,
                                      );
                                    },
                                    pageBuilder: (context, anim1, anim2) {
                                      return Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 540,
                                          width: 350,
                                          padding:
                                          EdgeInsets.symmetric(
                                              vertical: 15, horizontal: 20),
                                          decoration: BoxDecoration(
                                            color: Color(0xffE55C5E),
                                            // : Color(0xFFE55C5E),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Material(
                                            child: Container(
                                              color: Color(0xffE55C5E),
                                              // : Color(0xFFE55C5E),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceEvenly,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      SizedBox.shrink(),
                                                      IconButton(
                                                          icon: Icon(Icons.cancel,
                                                              color: Color(
                                                                  0xff003C47),
                                                              //:Colors.white,
                                                              size: 42),
                                                          onPressed: () {
                                                            Navigator.pop(context);
                                                            setState(() {});
                                                          }),
                                                    ],
                                                  ),
                                                  Image.asset('Assets/sad.png',
                                                    height: 300,
                                                  ),
                                                  Text(' ليس لديك نقاط ',
                                                    //'تستطيع فعل الأفضل' : 'حاول مرة أخرى',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      // : Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 30,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }
                                }
                              updatePoint(points, gameValue);
                            }
                            getCurrentChild();
                            //Audio('Assets/audio/gameInstruction.mp3'),
                          },
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => ColorGame()));},
                          child: Text(
                            "ألعب ",
                            style: TextStyle(color: Colors.white,
                            fontSize: 30),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
          )),
    );
  }
}