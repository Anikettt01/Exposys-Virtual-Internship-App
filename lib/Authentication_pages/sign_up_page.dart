import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  final void Function()? onPressed;
  const SignUpPage({super.key,required this.onPressed});


  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  _SignUpPageState(){

  }


  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  var _obsecured;

  @override
  void initState(){
    super.initState();
    _obsecured = true;
  }


  createUserWithEmailAndPassword()async{

      try {
        setState(() {
          isLoading = true;
        });
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
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
        if (e.code == 'weak-password') {
          return ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Enter strong password'),
              )
          );


        } else if (e.code == 'email-already-in-use') {
          return ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text('Email already in use',),
            )
          );
        }
        }
        catch (e) {
          setState(() {
            isLoading = false;
          });
        print(e);
      }
  }



  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;


    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [Form(
                key: _formKey,
                child: OverflowBar(
                  children: [
                    Container(
                      width: w,
                      height: h*0.4,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "images/login_page_background.png"
                              ),
                              fit: BoxFit.cover
                          )
                      ),
                    ),

                    SizedBox(height: 15,),
                    Center(
                      child: Container(
                        width: w*0.9,
                        child: TextFormField(
                          controller: _email,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Email is empty';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: "Enter email id",
                              prefixIcon: Icon(Icons.email, color: Colors.black,),
                              border: OutlineInputBorder(),
                          ),

                        ),
                      ),
                    ),


                    





                    SizedBox(height: 35,),
                    Center(
                      child: Container(
                        width: w*0.9,
                        child: TextFormField(
                          obscureText: _obsecured,
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
                              icon: _obsecured ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                              onPressed: (){
                                setState(() {
                                  _obsecured =! _obsecured;
                                });
                              },
                            ),
                            labelText: "Enter Password",
                            prefixIcon: Icon(Icons.password, color: Colors.black,),
                            border: OutlineInputBorder(),
                          ),

                        ),
                      ),
                    ),

                    SizedBox(height:30,),
                    Center(
                      child: Container(
                        width: w*0.5,
                        height: h*0.07,
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: (){
                            if (_formKey.currentState!.validate()){
                              createUserWithEmailAndPassword()();

                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,),

                          child:Center(
                            child: Text(
                              "Sign up",
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

                    SizedBox(height: 165,),
                    InkWell(
                      onTap: widget.onPressed,
                      child: Container(
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Have an Account? ",
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


