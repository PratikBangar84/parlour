import 'package:flutter/material.dart';
import 'package:flutter_webpage/landingscreen/landingscreen.dart';

import 'package:flutter_webpage/landingscreen/navbar.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyAw9Z0YN8f1ljbEdovDfHg_36TWX1s6YL0",
          authDomain: "parlour-a2347.firebaseapp.com",
          projectId: "parlour-a2347",
          storageBucket: "parlour-a2347.appspot.com",
          messagingSenderId: "958813889781",
          appId: "1:958813889781:web:5fe176bb7de94f6f1951bc"),
    );
  } else {
    Firebase.app();
  }
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(195, 20, 50, 1.0),
                Color.fromRGBO(36, 11, 54, 1.0)
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: landingscreen(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
