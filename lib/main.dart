
import 'package:flutter/material.dart';
import 'pages/product.dart';
import 'database/model.dart';
//
// *** Edit #1 *** => import plug-in
import 'pages/login.dart';
//

import 'package:firebase_core/firebase_core.dart';
import 'package:test_cloudbase/database/database_helper.dart';
void main() async {
  //
  // *** Edit #2 *** => Modify main to init firebase plug-in
  //
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      //
      // *** Edit #3 *** => modify calling ProductScreen (add new parameter)
      //
      // home:  ProductScreen(
      //   dbHelper: DatabaseHelper(),
      home: const LoginScreen(),
      );
    
  }
}
