import 'package:aban_app/getId.dart';
import 'package:flutter/material.dart';
import 'lessons_page.dart';
import 'custom_appbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddChildPage extends StatefulWidget {
  const AddChildPage({Key? key}) : super(key: key);
  @override
  _AddChildPageWidgetState createState() => _AddChildPageWidgetState();
}
class _AddChildPageWidgetState extends State<AddChildPage> {
  String imageLink = '';
  userInfo i = userInfo();
  onButtonPressed(String value) {
    setState(() {imageLink = value;});
  }
  final controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ما اسم طفلك؟",
                      style: TextStyle(
                        fontSize: 40,
                        color: Color(0xFF003C47),
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 350,
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "ما الشخصية المناسبة لطفلك؟",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF003C47),
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Wrap(
                        spacing: 25,
                        children: [
                          GestureDetector(
                            onTap: () {
                              onButtonPressed('Assets/img16.png');
                              print(imageLink);
                              //builder: (context) => CustomAppBar(imageLink: imageLink,);
                            },
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                radius: 50, //radius is 50
                                backgroundColor: Colors.white,
                                backgroundImage:
                                AssetImage('Assets/img16.png'),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              onButtonPressed('Assets/img20.png');
                              print(imageLink);
                              //builder: (context) => CustomAppBar(imageLink: imageLink,);
                            },
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                radius: 100,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                AssetImage('Assets/img20.png'),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              onButtonPressed('Assets/img17.png');
                              print(imageLink);
                              //final profile_image = await Navigator.push(context, MaterialPageRoute(builder: (context) => CustomAppBar(imageLink: imageLink)));
                              //builder: (context) => CustomAppBar(imageLink: imageLink,);
                            },
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                AssetImage('Assets/img17.png'),
                              ),
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
                        onPressed: () {
                          final name = controller.text;
                          i.createChild(name: name, imageLink: imageLink);
                          print(name);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PlanetChildPage()));
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// class DatabaseService {
//   final String uid;
//   DatabaseService({ this.uid});
//
//   final CollectionReference childCollection = FirebaseFirestore.instance.collection('children');
//
//   Future updateUserData(String name, String image) async {
//     return await childCollection.doc(uid).setData({
//       'name': name,
//       'image': image,
//     });
//   }
// }
class parent {
  parent({required this.name, this.id});
  final String name;
  final id;

  void addChild(String childName, String image){
    print("added child $childName");
  }
  void deleteChild(String childName){
    print("child $childName was deleted");
  }
  modifyChildAccount(String childName, String image){
    print("child new name is $childName");
  }

}