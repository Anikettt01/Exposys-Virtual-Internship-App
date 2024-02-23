import 'package:exposys_virtual_internship_app/Authentication_pages/forgot_password_page.dart';
import 'package:exposys_virtual_internship_app/Authentication_pages/sign_up_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onPressed;
  const LoginPage({super.key, required this.onPressed});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool isLoading = true;

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  var _isObsecured;

  @override
  void initState() {
    super.initState();
    _isObsecured = true;
  }

  signInWithEmailAndPassword() async {
    try {
      setState(() {
        isLoading = true;
      });
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _email.text,
        password: _password.text,
      );
      setState(() {
        isLoading = false;
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        isLoading = false;
      });
      if (e.code == 'user-not-found') {
        return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Enter registered email "),
          ),
        );
      } else if (e.code == 'wrong-password') {
        return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Please enter correct password"),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: OverflowBar(
                  children: [
                    Container(
                      width: w,
                      height: h * 0.38,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "images/login_page_background.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 40),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Center(
                      child: Container(
                        width: w * 0.9,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                controller: _email,
                                validator: (text) {
                                  if (text == null || text.isEmpty) {
                                    return 'Email is empty';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  labelText: "Enter email id",
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.black,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Center(
                      child: Container(
                        width: w * 0.9,
                        child: TextFormField(
                          obscureText: _isObsecured,
                          controller: _password,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Password is empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              color: Colors.black,
                              padding: EdgeInsetsDirectional.only(end: 12.0),
                              icon: _isObsecured
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _isObsecured = !_isObsecured;
                                });
                              },
                            ),
                            labelText: "Enter Password",
                            prefixIcon: Icon(
                              Icons.password,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Center(
                      child: Container(
                        width: w * 0.5,
                        height: h * 0.07,
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              signInWithEmailAndPassword();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                          ),
                          child: Center(
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => ForgotPasswordPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 200, right: 10, top: 10),
                        child: Container(
                          height: h * 0.04,
                          width: w,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    InkWell(
                      onTap: widget.onPressed,
                      child: Container(
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Don't have an account? ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                  ),
                                ),
                                TextSpan(
                                  text: "Click Here.",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
