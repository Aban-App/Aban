import 'package:firebase_auth/firebase_auth.dart';
import 'package:aban_app/getId.dart';
userInfo i = userInfo();
abstract class Database {

}
class FirestoreDatabase implements Database {
  FirestoreDatabase({required this.uid}) : assert(uid != null);
  String uid;
}