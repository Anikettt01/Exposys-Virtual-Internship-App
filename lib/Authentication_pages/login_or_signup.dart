import 'package:exposys_virtual_internship_app/Authentication_pages/sign_up_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:exposys_virtual_internship_app/Authentication_pages/login_page.dart';

class LoginandSingUp extends StatefulWidget {
  const LoginandSingUp({super.key});

  @override
  State<LoginandSingUp> createState() => _LoginandSingUpState();
}

class _LoginandSingUpState extends State<LoginandSingUp> {
  bool islogin = true;

  void togglePage(){
    setState(() {
      islogin = !islogin;
    });

  }

  @override
  Widget build(BuildContext context) {
    if (islogin){
      return LoginPage(
        onPressed: togglePage,
      );
    }else {
      return SignUpPage(
        onPressed: togglePage,
      );
    }

  }
}
