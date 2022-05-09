import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rescue2/Buttons%20Screens/Main%20Screen/Main%20Screen.dart';
import 'package:rescue2/screens/colors.dart';

class Tires extends StatefulWidget {
  const Tires({Key? key}) : super(key: key);

  @override
  _TiresState createState() => _TiresState();
}

class _TiresState extends State<Tires> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //The title of the app
      title: 'Rescue',
      //Statement to remove the demo banner from the application
      debugShowCheckedModeBanner: false,
      //This is the declaration of the home screen
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Tiires.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Mycolor.white,
          appBar: AppBar(
//This is the color of the app bar's BackGround
            backgroundColor: Mycolor.darkblue,
            //This is to control the shape of the appbar borders
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            //This is the title that will appear in the app bar
            title: Text(
              ("Tires"),
              //This is the stye of the text which is whether it is bold or not and the spacing between the letters and the font color
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.0,
                  color: Colors.white),
            ),
//This is a statement to put the title in the middle of the app bar
            centerTitle: true,
//Leading is used to put the items on the left side on the app bar but in this case the icon
            leading:
            //This is the arrow icon
            IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return Main_Screen();
                      }));
                }),
//Action is used to put the items on the right side on the app bar but in this case the icon
            actions: [
//Padding is used here to adjust the place of the icon below
              Padding(
                  padding: EdgeInsets.only(right: 80),
//This the Maintenance icon
                  child: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset("assets/images/tires.png"))),
            ],
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 30),
                  child: Container(
                    height: 70,
                    child:  TextField( controller: controller,
                      decoration: InputDecoration(
                        hoverColor: Colors.white,
                        hintText: "Milage when last changed tires",
                        icon: Icon(
                          Icons.speed_rounded,
                          color: Colors.blue,
                        ),
                      ),
                      keyboardType: TextInputType.datetime,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 60,
                    width: 150,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Mycolor.red,
                            fixedSize: Size(300, 70),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0))),
                        onPressed: () {
                          final tires = controller.text;
                          createTires(tires: tires);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (BuildContext context) {
                                return Main_Screen();
                              }));
                        },
                        child: Text("Done"))
                ),
              ]),
        ),
      ),
    );
  }
  Future createTires({required String tires}) async {
    final docTires = FirebaseFirestore.instance.collection('Tires').doc('tires');
    final json = {
      'Milage Tires Changed at':tires,
      'Date':DateTime.now(),
    };
    await docTires.set(json);
  }
}
