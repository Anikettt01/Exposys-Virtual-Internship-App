import 'package:exposys_virtual_internship_app/Authentication_pages/login_or_signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';

class AuthPage extends StatelessWidget{
  const AuthPage ({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot){
          if (snapshot.connectionState == ConnectionState.waiting){
            return const CircularProgressIndicator();
          }else{
            if (snapshot.hasData){
              return HomeScreen();
            }else {
              return const LoginandSingUp();
            }
          }
        },

      ),
    );
  }
}