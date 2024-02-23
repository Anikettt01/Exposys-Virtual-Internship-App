import 'package:exposys_virtual_internship_app/Authentication_pages/auth_page.dart';
import 'package:exposys_virtual_internship_app/Authentication_pages/login_page.dart';
import 'package:exposys_virtual_internship_app/Authentication_pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Authentication_pages/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      home: const AuthPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}