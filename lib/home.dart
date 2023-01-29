import 'package:flutter/material.dart';
import 'package:manam_/lib/quiz_screen.dart';
//import 'package:manam/audio.dart';

import 'about.dart';
import 'help.dart';
import 'previous.dart';
import 'profile.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Manam"), backgroundColor: Colors.pink),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.pinkAccent),
              onDetailsPressed: () {},
              currentAccountPicture: Image.network(
                  "https://img.icons8.com/bubbles/512/likee-ap.png"),
              //CircleAvatar(backgroundColor: Colors.pinkAccent),
              accountName: Text("Noor nisha"),
              accountEmail: Text("abc.gmail.com"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Profile();
                  }),
                );
              },
              title: Text("Profile"),
              leading: Icon(Icons.people),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            // ListTile(
            //   onTap: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(builder: (context) {
            //         return Audio();
            //       }),
            //     );
            //   },
            //   title: Text("Audio"),
            //   leading: Icon(Icons.audiotrack),
            //   trailing: Icon(Icons.arrow_forward_ios),
            // ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Help();
                  }),
                );
              },
              title: Text("Help"),
              leading: Icon(Icons.help_center),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Previous();
                }));
              },
              title: Text("Previous Records"),
              leading: Icon(Icons.book_outlined),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return About();
                  }),
                );
              },
              title: Text("About"),
              leading: Icon(Icons.info_outline),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(15),
          // child: Center(
          //   child: Text(
          //     "This a a 10 question test for diagnosing  monitoring and measuring the severity of depression",
          //     style: TextStyle(
          //         fontSize: 23, color: Colors.white, fontStyle: FontStyle.italic),
          //   ),
          // ),

          decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.pinkAccent, Colors.pinkAccent]),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 150),
                Text(
                  "This is a 10 question test for diagnosing  monitoring and measuring the severity of depression,",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 45),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 47,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        primary: Colors.pink,
                        onPrimary: Colors.pink.shade100,
                      ),
                      onPressed: () {
                        // print("clicked");
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return QuizScreen();
                        }));
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60, right: 30),
                  child: SizedBox(
                      height: 130,
                      width: 130,
                      child: Image.network(
                        "https://img.icons8.com/external-smashingstocks-circular-smashing-stocks/512/external-quiz-education-smashingstocks-circular-smashing-stocks.png",
                        //color: Colors.orange
                      )),
                ),
              ],
            ),
          )),

      // Text(
      //     'This a a 10 question test for diagnosing  monitoring and measuring the severity of depression')
    );
  }
}
//Icons.info_outline,arrow_forward_ios
