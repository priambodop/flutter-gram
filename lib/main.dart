import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gram/responsive/mobile_screen_layout.dart';
import 'package:flutter_gram/responsive/responsive_layout_screen.dart';
import 'package:flutter_gram/responsive/web_screen_layout.dart';
import 'package:flutter_gram/screens/login_screen.dart';
import 'package:flutter_gram/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: 'AIzaSyAoW17PGKByfJP6WkfM3F9U9GyK5g1IPDo',
      appId: '1:658811082548:web:5c8ce9941a9d9c6da07761',
      messagingSenderId: '658811082548',
      projectId: 'flutter-gram-75236',
      storageBucket: 'flutter-gram-75236.appspot.com',
    ));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Gram',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //     webScreenLayout: WebScreenLayout(),
      //     mobileScreenLayout: MobileScreenLayout()),
      home: LoginScreen(),
    );
  }
}
