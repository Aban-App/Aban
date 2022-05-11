
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nanoid/nanoid.dart';
class userInfo {
final CollectionReference childList = FirebaseFirestore.instance.collection('Child');
  Future createChild({required String name, required String imageLink}) async {
    var childID = customAlphabet('1234567890abcdef', 5);
    final docChild = FirebaseFirestore.instance.collection('Child').doc('$childID');
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
 }