import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery
        .of(context)
        .size
        .width;
    double h = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
            padding: const EdgeInsets.only(left: 55, right: 55),
            child: Text("Forgot Password")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "images/login_page_background.png"
                      ),
                      fit: BoxFit.cover
                  )
              ),
            ),
          Container(
                child: Text("Reset Your Password...",
                  style: TextStyle(color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),
                ),
              ),
            SizedBox(height: 30),
            Center(
              child: Container(
                width: w * 0.9,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: emailController,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Email is empty';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: "Enter email id",
                          prefixIcon: Icon(Icons.email, color: Colors.black,),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Center(
              child: Container(
                width: w * 0.7,
                height: h * 0.07,
                alignment: Alignment.center,
                child:
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size.fromHeight(50),
                  ),
                  icon: Icon(Icons.email_outlined),
                  label: Text("Reset Password"),
                  onPressed: VerifyEmail,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future VerifyEmail() async{
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: emailController.text.trim());

    const SnackBar(
      content: Text('Password Reset Email Sent'),
    );
  }
}


