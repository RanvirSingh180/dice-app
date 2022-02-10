import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final myController1 = TextEditingController();
final myController2 = TextEditingController();
final myController3 = TextEditingController();
final myController4 = TextEditingController();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Me Card",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
                fontSize: 25,
                fontStyle: FontStyle.italic),
          ),
          backgroundColor: Colors.lightGreen,
        ),
        body: menupage(),
      ),
    );
  }
}

class menupage extends StatefulWidget {
  const menupage({Key? key}) : super(key: key);

  @override
  _menupageState createState() => _menupageState();
}

class _menupageState extends State<menupage> {
  @override
  bool nameisDisabled = false;
  bool emailisDisabled = false;
  bool phnoisDisabled = false;
  bool genderisDisabled = false;

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
            height: 70,
            child: TextField(
              controller: myController1,
              enabled: !nameisDisabled,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Your Name',
              ),
            ),
          ), //name
          Container(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
            height: 70,
            child: OutlineButton(
              shape: new RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26.0),
              ),
              borderSide: BorderSide(
                color: Colors.lightGreen,
              ),
              splashColor: Colors.lightGreen,
              onPressed: () {
                setState(() {
                  print(myController1.text);
                  nameisDisabled = true;
                });
              },
              child: const Text('Confirm Name'),
            ),
          ), //button
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
            height: 70,
            child: TextField(
              controller: myController2,
              enabled: !emailisDisabled,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Your Email',
              ),
            ),
          ), //email
          Container(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
            height: 70,
            child: OutlineButton(
              shape: new RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26.0),
              ),
              borderSide: BorderSide(
                color: Colors.lightGreen,
              ),
              splashColor: Colors.lightGreen,
              onPressed: () {
                setState(() {
                  emailisDisabled = true;
                  print(myController2.text);
                });
              },
              child: const Text('Confirm Email'),
            ),
          ), //button
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
            height: 70,
            child: TextField(
              controller: myController3,
              enabled: !phnoisDisabled,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Your Ph No. ',
              ),
            ),
          ), //phno
          Container(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
            height: 70,
            child: OutlineButton(
              shape: new RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26.0),
              ),
              borderSide: BorderSide(
                color: Colors.lightGreen,
              ),
              splashColor: Colors.lightGreen,
              onPressed: () {
                setState(() {
                  print(myController3.text);
                  phnoisDisabled = true;
                });
              },
              child: const Text('Confirm Ph no.'),
            ),
          ), //button
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
            height: 70,
            child: TextField(
              enabled: !genderisDisabled,
              controller: myController4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Your Gender (M/F) ',
              ),
            ),
          ), //gender
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
            height: 70,
            child: OutlineButton(
              shape: new RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26.0),
              ),
              borderSide: BorderSide(
                color: Colors.blueAccent,
              ),
              splashColor: Colors.blueAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const me_card()),
                );
                setState(() {
                  genderisDisabled = true;
                });
              },
              child: const Text('SUBMIT'),
            ),
          ), //button

          //button
        ],
      ),
    );
  }
}

class me_card extends StatelessWidget {
  const me_card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Me Card",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
                fontSize: 40,
                fontStyle: FontStyle.italic),
          ),
          backgroundColor: Colors.lightGreen,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 400,
            color: Colors.grey,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
                  child: Text(
                    "ME CARD",
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        backgroundColor: Colors.indigo),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Name: " + myController1.text,
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Email: " + myController2.text,
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Phno.: " + myController3.text,
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Gender: " + myController4.text,
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
