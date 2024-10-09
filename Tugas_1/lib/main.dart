import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Tugas 1 - 225150407111056 - Noval Raihan Ramadhan";

    return MaterialApp(
      title: title,
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.5, 1.0],
                colors: [Colors.greenAccent, Colors.cyan, Colors.blue])),
        child: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoViewer(image: 'assets/Logo.png'),
              Padding(
                  padding: EdgeInsets.only(top: 32, right: 60, left: 60),
                  child: TaglineSection()),
              Padding(
                padding: EdgeInsets.only(top: 32, right: 50, left: 50),
                child: UserInput(),
              )
            ],
          ),
        ),
      )),
    );
  }
}

class LogoViewer extends StatelessWidget {
  final String image;

  const LogoViewer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 177.29,
      height: 109.01,
      fit: BoxFit.cover,
    );
  }
}

class TaglineSection extends StatelessWidget {
  final String tagline =
      "Learn Graphic and UI/UX designing in Hindi for free with live projects";

  const TaglineSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          tagline,
          style: const TextStyle(fontSize: 12, color: Colors.white),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

class UserInput extends StatefulWidget {
  const UserInput({super.key});

  @override
  State<UserInput> createState() => InputState();
}

class InputState extends State<UserInput> {
  final GlobalKey<InputState> inputKey = GlobalKey<InputState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: inputKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              // Input Email
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      blurStyle: BlurStyle.normal),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Email Address",
                  contentPadding: const EdgeInsets.only(left: 24),
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: const Color(0xFF6CC5DE),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              // Input Password
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        blurStyle: BlurStyle.normal),
                  ],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    contentPadding: const EdgeInsets.only(left: 24),
                    hintStyle: const TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: const Color(0xFF6CC5DE),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              // Button Login
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                  width: 500,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          blurStyle: BlurStyle.normal),
                    ],
                  ),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue),
                      ))),
            ),
            const Padding(
              // Text Forgot Password
              padding: EdgeInsets.only(top: 1),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              // Button Social Media
              padding: const EdgeInsets.only(top: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 90,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: Colors.white),
                          child: Image.asset('assets/g.png'),
                        ),
                      ),
                      SizedBox(
                        width: 90,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: Colors.white),
                          child: Image.asset('assets/f.png'),
                        ),
                      ),
                      SizedBox(
                        width: 90,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: Colors.white),
                          child: Image.asset('assets/t.png'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              // Text Don't Have an Account
              padding: const EdgeInsets.only(top: 48),
              child: RichText(
                  text: const TextSpan(
                      text: "Don't have an account ?",
                      style: TextStyle(color: Colors.white),
                      children: [
                    WidgetSpan(
                        child: Padding(padding: EdgeInsets.only(left: 5))),
                    TextSpan(
                        text: "Register Now",
                        style: TextStyle(decoration: TextDecoration.underline))
                  ])),
            )
          ],
        ));
  }
}
