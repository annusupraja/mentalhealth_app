import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 60),
                child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.network(
                      "https://img.icons8.com/bubbles/512/likee-ap.png",
                      //color: Colors.orange
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Manam",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "stay healthy,stay happy",
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65),
              child: TextField(
                decoration: InputDecoration(
                    // prefix: Icon(Icons.people),
                    hintText: "Name",
                    labelText: "Name",
                    filled: true,
                    fillColor: Colors.pinkAccent,
                    hoverColor: Colors.redAccent,
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: TextField(
                decoration: InputDecoration(
                    // prefix: Icon(Icons.people),
                    hintText: "Password",
                    labelText: "Password",
                    filled: true,
                    fillColor: Colors.pinkAccent,
                    hoverColor: Colors.redAccent,
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: ElevatedButton(
                onPressed: () {
                  // print("clicked");
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return home();
                  }));
                },
                child: Text(
                  "NEXT",
                  style: TextStyle(
                    color: Color(0xff19ad89),
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    //fontFamily: 'BungeeSpice',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => home()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
