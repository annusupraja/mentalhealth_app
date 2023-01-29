import 'package:flutter/material.dart';

class Previous extends StatefulWidget {
  const Previous({Key? key}) : super(key: key);

  @override
  State<Previous> createState() => _PreviousState();
}

class _PreviousState extends State<Previous> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Previous Records"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: SizedBox(
              height: 100,
              width: 100,
              child: Image.network(
                "https://img.icons8.com/external-flaticons-flat-flat-icons/512/external-documents-copyright-law-flaticons-flat-flat-icons.png",
                //color: Colors.orange
              )),
        ),
      ),
    );
  }
}
