import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/launchScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //return instance of WidgetsBinding
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.white,
      ),
      home: LaunchScreen(),
    );
  }
}
