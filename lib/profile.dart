import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.pinkAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.crop_square_sharp,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(left: 130, top: 60),
              child: SizedBox(
                height: 150,
                width: 200,
                child:
                    Image.network("https://img.icons8.com/doodle/512/girl.png"),
              )),
          Padding(
            padding: EdgeInsets.only(left: 130, top: 10),
            child: Text(
              "Noor Nisha",
              style: TextStyle(fontSize: 40, color: Colors.pink),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 120, top: 10),
            child: Text(
              "abc.gmail.com",
              style: TextStyle(fontSize: 20, color: Colors.pinkAccent),
            ),
          )
        ],
      ),
    );
  }
}
