// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class WriteD extends StatelessWidget {
  //const WriteD({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          backgroundColor: Color(0xFF7CC5CB),
          toolbarHeight: 70,
          title: CustomAppBar(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20.0),
            ),
          ),
        ),
        body: Container(
          color: Color(0xFFEBFCFA),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    // spacing: 20,
                    // direction:Axis.vertical,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 3,
                                color:Color(0xFF299593)
                            ),
                          ),
                          child: Image.asset('Assets/dal16.gif',
                              height: 400, width: 400)),
                      SizedBox(height: 25,),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          width: 150, //wrap button with sizedBox to define width
                          child: RaisedButton(
                            color: Color(0xFF299593),
                            child: Row(
                              children: [
                                Icon(Icons.info_outline, color: Colors.white,),
                                Text('التعليمات', style: TextStyle(fontSize: 27,color: Colors.white),),
                              ],
                            ),
                            onPressed: () {
                              audioPlayer.open(Audio('Assets/audio/writeInsruction,mp3'),
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
                                                      }),
                                                ],
                                              ),
                                              Image.asset(
                                                'Assets/write.png',
                                                //: 'assets/sad.png',
                                                height: 400,
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          width: 150, //wrap button with sizedBox to define width
                          child: RaisedButton(
                            color: Color(0xFF299593),
                            child: Image.asset(
                              'Assets/camera.png',
                              height: 50,
                              width: 50,
                            ),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFF48B5B5),
                                )),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ));
  }
}