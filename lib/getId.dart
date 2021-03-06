
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nanoid/nanoid.dart';
class userInfo {
// gettung the user id from firebase authintication
  final FirebaseAuth auth = FirebaseAuth.instance;
  getCurrentUID() {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User? user = auth.currentUser;
    final uid = user!.uid;
    return uid;
  }
  late var id = getCurrentUID();
  // Future addChildDoc() async {
  //   final addDoc = FirebaseFirestore.instance.collection('parent').doc('$id');
  // }

late final CollectionReference childList = FirebaseFirestore.instance.collection('parent').doc('$id').collection('child');
  Future createChild({required String name, required String imageLink}) async {
    // creating child id with custom alphabet and length
    var childID = customAlphabet('1234567890abcdef', 5);
    final docChild = FirebaseFirestore.instance.collection('parent').doc('$id').collection('child').doc('$childID');
    final json = {
      'name': name,
      'ID': childID,
      'image': imageLink,
      'points': 0,
    };
    await docChild.set(json);
  }

  Future getChildList() async {
    dynamic itemsList = [];
    try {
      await childList.get().then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((element) {
          itemsList.add(element.data());
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Future setCurrentChild({required String childId}) async {
  //   // creating child id with custom alphabet and length
  //   final docChild = FirebaseFirestore.instance.collection('parent').doc('$id').collection('child').doc('$childId');
  //   final json = {
  //     'id': childId,
  //   };
  //   await docChild.set(json);
  // }

 }