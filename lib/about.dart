import 'dart:ui';

import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ABOUT"),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: SizedBox(
                height: 150,
                width: 100,
                child: Image.network(
                    "https://img.icons8.com/dusk/512/mental-health.png"),
              )),
          Padding(
            padding: EdgeInsets.only(left: 40, top: 10),
            child: Text(
              "Most people know they can exercise, eat well, sleep, and stay hydrated to take care of their physical health. But it’s less common for people to pay attention to their mental health. Just like your physical health, support for your mental health helps you feel your best.",
              style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, top: 10),
            child: Text(
              "This app provides all the neccesary advices that are required to over come your mental illness",
              style: TextStyle(fontSize: 20, color: Colors.redAccent),
            ),
          )
        ],
      ),
    );
  }
}
