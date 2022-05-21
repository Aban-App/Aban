// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types
import 'package:aban_app/childLogin.dart';
import 'package:aban_app/lessons_page.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class firstQ extends StatefulWidget {
  const firstQ({Key? key}) : super(key: key);
  //static const routeName = '/quiz';
  @override
  _firstQWidgetState createState() => _firstQWidgetState();
}

class _firstQWidgetState extends State<firstQ> {
  var getId = Get.arguments;
  @override
  Widget build(BuildContext context) {
    //var id = Get.arguments;
    //final args = ModalRoute.of(context)!.settings.arguments as ChildLogin;
    //final  Map<String, Object>rcvdData = ModalRoute.of(context).settings.arguments;
    AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
    return Scaffold(
      body: Container(
        color: Color(0xff003C47),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            // heightFactor: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('أين حرف أ ؟',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 60)),
                    SizedBox(width: 70,),
                    IconButton(
                      icon: Icon(Icons.mic),
                      iconSize: 90,
                      color: Color(0xFFFAC963),
                      onPressed: () {
                        print(getId);
                        audioPlayer.open(Audio('Assets/audio/where alif.mp3'),
                            autoStart: true);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Text("الخيار الأول"), Text("الخيار الثاني")
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        children: [
                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/gem.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              //wrong answer sound
                              audioPlayer.open(
                                  Audio('Assets/audio/wrong try again.mp3'),
                                  autoStart: true);
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
                                              Text('حاول مرة أخرى',
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
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/baa.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              //wrong answer sound
                              audioPlayer.open(
                                  Audio('Assets/audio/wrong try again.mp3'),
                                  autoStart: true);
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
                                              Text('حاول مرة أخرى',
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
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Text("الخيار الثالث"), Text("الخيار الرابع")
                      Row(
                        children: [
                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/alif.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              audioPlayer.open(
                                  Audio(
                                      'Assets/audio/Kids Cheering Sound Effect.mp3'),
                                  autoStart: true);
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
                                        color: Color(0xFFEAF9F9),
                                        // : Color(0xFFE55C5E),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Material(
                                        child: Container(
                                          color: Color(0xFFEAF9F9),
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
                                              Image.asset(
                                                'Assets/happy.gif',
                                                //: 'assets/sad.png',
                                                height: 300,
                                              ),
                                              Text(" أحسنت لقد كسبت خمس نقاط",
                                                //'تستطيع فعل الأفضل' : 'حاول مرة أخرى',
                                                style: TextStyle(
                                                  color: Color(0xffE55C5E),
                                                  // : Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25,
                                                ),
                                              ),
                                              IconButton(
                                                  icon: Icon(Icons.arrow_forward,
                                                      color: Color(
                                                          0xff003C47),
                                                      //:Colors.white,
                                                      size: 42),
                                                  onPressed: () {
                                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => secondQ()));
                                                  }),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                              //final FirebaseAuth auth = FirebaseAuth.instance;
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
                                updatePoint(int point) async {
                                  point += 5;
                                    try {
                                      await  FirebaseFirestore.instance.collection('parent').doc('$parentId').collection('child')
                                          .doc('$childID')
                                          .update({"points": point});
                                    } catch (e){
                                      return false;
                                    }}
                                updatePoint(points);
                              }
                              getCurrentChild();
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/dal.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              //wrong answer sound
                              audioPlayer.open(
                                  Audio('Assets/audio/wrong try again.mp3'),
                                  autoStart: true);
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
                                              Text('حاول مرة أخرى',
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
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/////////////// Quiz 2
// ignore_for_file: prefer_const_constructors, camel_case_types

class secondQ extends StatefulWidget {
  const secondQ({Key? key}) : super(key: key);
  @override
  _secondQWidgetState createState() => _secondQWidgetState();
}

class _secondQWidgetState extends State<secondQ> {
  @override
  Widget build(BuildContext context) {
    AssetsAudioPlayer audioPlayer =
    AssetsAudioPlayer(); // this will create a instance object of a class

    return Scaffold(
      body: Container(
        color: Color(0xff003C47),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            // heightFactor: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("أين حرف ب ؟",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 60)),
                    SizedBox(width: 70,),
                    IconButton(
                      icon: Icon(Icons.mic),
                      iconSize: 90,
                      color: Color(0xFFFAC963),
                      onPressed: () {
                        audioPlayer.open(Audio('Assets/audio/where baa2.mp3'),
                            autoStart: true);
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
                                        Text('حاول مرة أخرى',
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
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Text("الخيار الأول"), Text("الخيار الثاني")
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        children: [
                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/alif.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              //wrong answer sound
                              audioPlayer.open(
                                  Audio('Assets/audio/wrong try again.mp3'),
                                  autoStart: true);
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
                                              Text('حاول مرة أخرى',
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
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/baa.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              audioPlayer.open(
                                Audio(
                                    'Assets/audio/Kids Cheering Sound Effect.mp3'),
                                autoStart: true,
                              );
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
                                        color: Color(0xFFEAF9F9),
                                        // : Color(0xFFE55C5E),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Material(
                                        child: Container(
                                          color: Color(0xFFEAF9F9),
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
                                              Image.asset(
                                                'Assets/happy.gif',
                                                //: 'assets/sad.png',
                                                height: 300,
                                              ),
                                              Text(" أحسنت لقد كسبت خمس نقاط",
                                                //'تستطيع فعل الأفضل' : 'حاول مرة أخرى',
                                                style: TextStyle(
                                                  color: Color(0xffE55C5E),
                                                  // : Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25,
                                                ),
                                              ),
                                              IconButton(
                                                  icon: Icon(Icons.arrow_forward,
                                                      color: Color(
                                                          0xff003C47),
                                                      //:Colors.white,
                                                      size: 42),
                                                  onPressed: () {
                                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => thirdQ()));
                                                  }),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
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
                                updatePoint(int point) async {
                                  point += 5;
                                  try {
                                    await  FirebaseFirestore.instance.collection('parent').doc('$parentId').collection('child')
                                        .doc('$childID')
                                        .update({"points": point});
                                  } catch (e){
                                    return false;
                                  }}
                                updatePoint(points);
                              }
                              getCurrentChild();
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Text("الخيار الثالث"), Text("الخيار الرابع")
                      Row(
                        children: [
                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/gem.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              //wrong answer sound
                              audioPlayer.open(
                                  Audio('Assets/audio/wrong try again.mp3'),
                                  autoStart: true);
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
                                              Text('حاول مرة أخرى',
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
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/dal.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              //wrong answer sound
                              audioPlayer.open(
                                  Audio('Assets/audio/wrong try again.mp3'),
                                  autoStart: true);
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
                                              Text('حاول مرة أخرى',
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
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/////////////// Quiz 3
// ignore_for_file: prefer_const_constructors

class thirdQ extends StatefulWidget {
  const thirdQ({Key? key}) : super(key: key);
  @override
  _thirdQWidgetState createState() => _thirdQWidgetState();
}

class _thirdQWidgetState extends State<thirdQ> {
  String imageLink = '';
  onButtonPressed(String value) {
    setState(() {
      imageLink = value;
    });
    //onButtonPressed('Assets/img16.png'); جوا كل زر احط
  }

  @override
  Widget build(BuildContext context) {
    AssetsAudioPlayer audioPlayer =
    AssetsAudioPlayer(); // this will create a instance object of a class

    return Scaffold(
      body: Container(
        color: Color(0xff003C47),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            // heightFactor: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("أين حرف ج ؟",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 60)),
                    SizedBox(width: 70,),
                    IconButton(
                      icon: Icon(Icons.mic),
                      iconSize: 90,
                      color: Color(0xFFFAC963),
                      onPressed: () {
                        audioPlayer.open(Audio('Assets/audio/where gem.mp3'),
                            autoStart: true);
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
                                        Text('حاول مرة أخرى',
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
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Text("الخيار الأول"), Text("الخيار الثاني")
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        children: [
                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/alif.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              //wrong answer sound
                              audioPlayer.open(
                                  Audio(
                                      'Assets/audio/wrong try again.mp3'),
                                  autoStart: true);
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
                                              Text('حاول مرة أخرى',
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
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/baa.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              //wrong answer sound
                              audioPlayer.open(
                                  Audio(
                                      'Assets/audio/wrong try again.mp3'),
                                  autoStart: true);
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
                                              Text('حاول مرة أخرى',
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
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Text("الخيار الثالث"), Text("الخيار الرابع")
                      Row(
                        children: [
                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/dal.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              //wrong answer sound
                              audioPlayer.open(
                                  Audio(
                                      'Assets/audio/wrong try again.mp3'),
                                  autoStart: true);
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
                                              Text('حاول مرة أخرى',
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
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                          SizedBox(
                            width: 50,
                          ),

                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/gem.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              audioPlayer.open(
                                  Audio(
                                      'Assets/audio/Kids Cheering Sound Effect.mp3'),
                                  autoStart: true);
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
                                        color: Color(0xFFEAF9F9),
                                        // : Color(0xFFE55C5E),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Material(
                                        child: Container(
                                          color: Color(0xFFEAF9F9),
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
                                              Image.asset(
                                                'Assets/happy.gif',
                                                //: 'assets/sad.png',
                                                height: 300,
                                              ),
                                              Text(" أحسنت لقد كسبت خمس نقاط",
                                                //'تستطيع فعل الأفضل' : 'حاول مرة أخرى',
                                                style: TextStyle(
                                                  color: Color(0xffE55C5E),
                                                  // : Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25,
                                                ),
                                              ),
                                              IconButton(
                                                  icon: Icon(Icons.arrow_forward,
                                                      color: Color(
                                                          0xff003C47),
                                                      //:Colors.white,
                                                      size: 42),
                                                  onPressed: () {
                                                    Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context) => fourthQ()));
                                                  }),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
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
                                updatePoint(int point) async {
                                  point += 5;
                                  try {
                                    await  FirebaseFirestore.instance.collection('parent').doc('$parentId').collection('child')
                                        .doc('$childID')
                                        .update({"points": point});
                                  } catch (e){
                                    return false;
                                  }}
                                updatePoint(points);
                              }
                              getCurrentChild();
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//////////////////Quiz 4
// ignore_for_file: prefer_const_constructors

class fourthQ extends StatefulWidget {
  const fourthQ({Key? key}) : super(key: key);
  @override
  _fourthQWidgetState createState() => _fourthQWidgetState();
}

class _fourthQWidgetState extends State<fourthQ> {
  @override
  Widget build(BuildContext context) {
    AssetsAudioPlayer audioPlayer =
    AssetsAudioPlayer(); // this will create a instance object of a class

    return Scaffold(
      body: Container(
        color: Color(0xff003C47),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            // heightFactor: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("أين حرف د ؟",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 60)),
                    SizedBox(width: 70,),
                    IconButton(
                      icon: Icon(Icons.mic),
                      iconSize: 90,
                      color: Color(0xFFFAC963),
                      onPressed: () {
                        audioPlayer.open(Audio('Assets/audio/where dal.mp3'),
                            autoStart: true);
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Text("الخيار الأول"), Text("الخيار الثاني")
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        children: [
                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/alif.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              //wrong answer sound
                              audioPlayer.open(
                                  Audio('Assets/audio/wrong try again.mp3'),
                                  autoStart: true);
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
                                              Text('حاول مرة أخرى',
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
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/baa.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              //wrong answer sound
                              audioPlayer.open(
                                  Audio('Assets/audio/wrong try again.mp3'),
                                  autoStart: true);
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
                                              Text('حاول مرة أخرى',
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
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Text("الخيار الثالث"), Text("الخيار الرابع")
                      Row(
                        children: [
                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/dal.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              audioPlayer.open(
                                  Audio(
                                      'Assets/audio/Kids Cheering Sound Effect.mp3'),
                                  autoStart: true);
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
                                        color: Color(0xFFEAF9F9),
                                        // : Color(0xFFE55C5E),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Material(
                                        child: Container(
                                          color: Color(0xFFEAF9F9),
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
                                              Image.asset(
                                                'Assets/happy.gif',
                                                //: 'assets/sad.png',
                                                height: 300,
                                              ),
                                              Text(" أحسنت لقد كسبت خمس نقاط",
                                                //'تستطيع فعل الأفضل' : 'حاول مرة أخرى',
                                                style: TextStyle(
                                                  color: Color(0xffE55C5E),
                                                  // : Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25,
                                                ),
                                              ),
                                              IconButton(
                                                  icon: Icon(Icons.check,
                                                      color: Color(
                                                          0xff003C47),
                                                      //:Colors.white,
                                                      size: 42),
                                                  onPressed: () {
                                                    Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context) => PlanetChildPage()));
                                                  }),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
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
                                updatePoint(int point) async {
                                  point += 5;
                                  try {
                                    await  FirebaseFirestore.instance.collection('parent').doc('$parentId').collection('child')
                                        .doc('$childID')
                                        .update({"points": point});
                                  } catch (e){
                                    return false;
                                  }}
                                updatePoint(points);
                              }
                              getCurrentChild();
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          RaisedButton(
                            color: Color(0xFFE6FFFF),
                            child: Image.asset(
                              'Assets/gem.png',
                              height: 150,
                              width: 200,
                            ),
                            onPressed: () {
                              //wrong answer sound
                              audioPlayer.open(
                                  Audio('Assets/audio/wrong try again.mp3'),
                                  autoStart: true);
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
                                              Text('حاول مرة أخرى',
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
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

