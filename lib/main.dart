import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import "package:firebase_core/firebase_core.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final DBRef = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.pink[900],
          appBar: AppBar(
              backgroundColor: Colors.pink[900],
              title: Text("FirebaseExample",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ))),
          body: Row(children: <Widget>[
            RaisedButton(
                child: Text("Write Data"),
                onPressed: () {
                  writeData();
                })
          ])),
    );
  }

  void writeData() {
    DBRef.child("1").set({});
  }
}
