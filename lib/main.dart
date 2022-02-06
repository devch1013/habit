import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home/screen/home_my_screen.dart';
import 'home/screen/navigation_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habitat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.grey,
        textTheme: ThemeData.light().textTheme.copyWith(
              headline4: const TextStyle(
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => NavigationScreen(),
      },
    );
  }
}
