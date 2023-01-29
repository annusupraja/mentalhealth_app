import 'dart:ui';

import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HELP"),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: SizedBox(
                height: 150,
                width: 100,
                child:
                    Image.network("https://img.icons8.com/color/512/trust.png"),
              )),
          Padding(
            padding: EdgeInsets.only(left: 40, top: 10),
            child: Text(
              "Mental health apps can be helpful to track overall wellbeing as well as monitor mental health disorders. This feature can be useful to record sleeping cycles, mood patterns, symptoms, meals and physical activity, thoughts, feelings, etc. Users can analyze data themselves or hand them over to a specialist.",
              style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, top: 10),
            child: Text(
              "Mobile Mental Health (MMH) apps emerge as an effective alternative to assist with a broad range of psychological disorders filling the much-needed patient-provider accessibility gap. However, it also raises significant concerns with sensitive information leakage.",
              style: TextStyle(fontSize: 20, color: Colors.redAccent),
            ),
          )
        ],
      ),
    );
  }
}
