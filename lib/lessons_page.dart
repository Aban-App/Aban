import 'package:flutter/material.dart';
import 'main.dart';
import 'login.dart';
import 'letterA_page.dart';
import 'letterB_page.dart';
import 'letterG_page.dart';

class PlanetChildPage extends StatefulWidget {
  const PlanetChildPage({Key? key}) : super(key: key);
  @override
  _PlanetChildPageWidgetState createState() => _PlanetChildPageWidgetState();
}
class _PlanetChildPageWidgetState extends State<PlanetChildPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   brightness: Brightness.light,
      //   backgroundColor: Color(0xFF7CC5CB),
      //   toolbarHeight: 70,
      //   leading: RaisedButton(
      //     textColor: Color(0xFFFFFFFF),
      //     color: Color(0xFFFAC963),
      //     child: Text(
      //       "الوالدين",
      //       style: TextStyle(
      //         fontSize: 27,
      //         color: Color(0xFF003C47),
      //         // fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //     onPressed: () {},
      //   ),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.vertical(
      //       bottom: Radius.circular(20.0),
      //     ),
      //   ),
      // ),
      body: Center(
        child: Container(
          height: 350,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const AlwaysScrollableScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Column(
                    children: [
                      Text(
                        ' د',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            //shape:
                          ),
                          child: Image.asset(
                              'Assets/img12.png') //صورة الكتب
                      ),
                    ],
                  ),
                  onPressed: () {},
                  style:
                  ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: Colors.teal,
                          width: 2.0,
                        ),
                      ),
                      fixedSize: Size(250, 350),
                      primary: Color(0xFF003C47),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Column(
                    children: [
                      Text(
                        'ج',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            //shape:
                          ),
                          child: Image.asset(
                              'Assets/img3.png') //صورة الكتب
                      ),
                    ],
                  ),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LessonPageG()));},
                  style:
                  ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: Colors.teal,
                          width: 2.0,
                        ),
                      ),
                      fixedSize: Size(250, 350),
                      primary: Color(0xFF003C47),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Column(
                    children: [
                      Text(
                        'ب',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            //shape:
                          ),
                          child: Image.asset(
                              'Assets/img9.png') //صورة الكتب
                      ),
                    ],
                  ),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LessonPageB()));},
                  style:
                  ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: Colors.teal,
                          width: 2.0,
                        ),
                      ),
                      fixedSize: Size(250, 350),
                      primary: Color(0xFF003C47),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Column(
                    children: [
                      Text(
                        ' أ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            //shape:
                          ),
                          child: Image.asset(
                              'Assets/img5.png') //صورة الكتب
                      ),
                    ],
                  ),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LessonPageA()));},
                  style:
                  ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: Colors.teal,
                          width: 2.0,
                        ),
                      ),
                      fixedSize: Size(250, 350),
                      primary: Color(0xFF003C47),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
