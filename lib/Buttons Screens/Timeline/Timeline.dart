import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rescue2/screens/ButtomSheatHelper.dart';
import 'package:rescue2/screens/colors.dart';
import 'package:rescue2/Buttons Screens/Main Screen/Main Screen.dart';

class Timeline extends StatefulWidget {
  const Timeline({Key? key}) : super(key: key);

  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
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
            image: AssetImage("assets/images/Tiimeline.jpg"),
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
                ("Timeline"),
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
                Row(
                  children: [
                    //Padding is used here to adjust the place of the icon below
                    Padding(
                        padding: EdgeInsets.only(right: 40),
//This the icon
                        child: Container(
                            height: 30,
                            width: 30,
                            child:
                            Image.asset("assets/images/timeline (1).png"))),
                    IconButton(
                      icon: Icon(Icons.info_outline_rounded),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return ButtomSheatHelper();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            body: Center(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Mycolor.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 120,
                            width: 370,
                            decoration: BoxDecoration(
                              //  borderRadius: ,
                                color: Mycolor.red
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  children: [
                                    Text("Mailage",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),

                                    SizedBox(height: 10,),
                                    Text("enter the date",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        //   fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("enter your milage",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        //     fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ]),
                            ),


                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 120,
                            width: 370,
                            decoration: BoxDecoration(
                            //  borderRadius: ,
                              color: Mycolor.red
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text("Mailage",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),

                          SizedBox(height: 10,),
                          Text("enter the date",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                               //   fontWeight: FontWeight.bold
                              ),
                          ),
                          SizedBox(height: 10,),
                          Text("enter your milage",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                           //     fontWeight: FontWeight.bold
                              ),
                          ),
                          ]),
                            ),


                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 120,
                            width: 370,
                            decoration: BoxDecoration(
                              //  borderRadius: ,
                                color: Mycolor.red
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  children: [
                                    Text("Mailage",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),

                                    SizedBox(height: 10,),
                                    Text("enter the date",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        //   fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("enter your milage",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        //     fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ]),
                            ),


                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 120,
                            width: 370,
                            decoration: BoxDecoration(
                              //  borderRadius: ,
                                color: Mycolor.red
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  children: [
                                    Text("Mailage",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),

                                    SizedBox(height: 10,),
                                    Text("enter the date",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        //   fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("enter your milage",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        //     fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ]),
                            ),


                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 120,
                            width: 370,
                            decoration: BoxDecoration(
                              //  borderRadius: ,
                                color: Mycolor.red
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  children: [
                                    Text("Mailage",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),

                                    SizedBox(height: 10,),
                                    Text("enter the date",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        //   fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("enter your milage",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        //     fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ]),
                            ),


                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 120,
                            width: 370,
                            decoration: BoxDecoration(
                              //  borderRadius: ,
                                color: Mycolor.red
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  children: [
                                    Text("Mailage",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),

                                    SizedBox(height: 10,),
                                    Text("enter the date",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        //   fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("enter your milage",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        //     fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ]),
                            ),


                          ),
                        ),


                        //SizedBox(height: 5,),
                      ],
                    ),
                  ),


                ),

              ),
            )),
    );
  }
}