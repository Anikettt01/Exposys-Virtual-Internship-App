import 'package:exposys_virtual_internship_app/navigation_bar_pages/terms_and_conditions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FullStackDeveloper extends StatefulWidget {
  const FullStackDeveloper({super.key});

  @override
  State<FullStackDeveloper> createState() => _FullStackDeveloperState();
}

class _FullStackDeveloperState extends State<FullStackDeveloper> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Container(
                  width: w,
                  height: h*0.22,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "images/Fullstack_developer_background.png"
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  height: h*0.1,
                  width: w,
                  child: Text("Full Stack Developer",style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  height: h*0.1,
                  width: w,
                  child: Text("Internship Overview: ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,

                    ),),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: Container(
                  height: h*0.05,
                  width: w,
                  child: Text("i). General Instructions :- ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,

                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: Container(
                  height: h*0.12,
                  width: w,
                  child: Text("➤  After applying to the internship, "
                      "our team will assign you a project in which you have to create a web application and submit "
                      "within your internship period.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,

                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: Container(
                  height: h*0.15,
                  width: w,
                  child: Text("➤  After assigning you a project, you have to complete "
                      "the project which include all the points which will be asked to mentioned "
                      "in your particular project.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,

                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: Container(
                  height: h*0.05,
                  width: w,
                  child: Text("ii). Submission Instructions :- ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,

                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  height: h*0.09,
                  child: RichText(text:TextSpan(
                    text: "➤  Send the ZIP file of Project details to ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),
                    children: [
                      TextSpan(
                        text: "exposysdatalabs@gmail.com",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              String? encodeQueryParameters(Map<String, String> params) {
                                return params.entries
                                    .map((MapEntry<String, String> e) =>
                                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                    .join('&');
                              }

                              final Uri emailUri = Uri(
                                  scheme: 'mailto',
                                  path: 'exposysdatalabs@gmail.com'
                              );
                              try {
                                await launchUrl(emailUri);
                              }catch(e) {
                                print(e.toString());
                              };
                            }
                      )



                    ],
                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: Container(
                  height: h*0.12,
                  width: w,
                  child: Text("➤  Also submit project details like Report, PPT, Code of project and Demo video of your project.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,

                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: Container(
                  height: h*0.12,
                  width: w,
                  child: Text("➤  Further details will be shared on your registered email.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,

                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: Container(
                  height: h*0.05,
                  width: w,
                  child: Text("iii). Benifits :-" ,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,

                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: Container(
                  height: h*0.12,
                  width: w,
                  child: Text("➤  You will be rewarded with a Certificate of completion of internship.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,

                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: Container(
                  height: h*0.05,
                  width: w,
                  child: Text("iii). Sample Project :-" ,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,

                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: Container(
                  height: h*0.18,
                  width: w,
                  child: Text("➤  A online website that sells burgers. It suggests users to not only customize their "
                    "burgers by adding or removing ingredients but also create their own burger from the ingredients "
                    "in stock. ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,

                    ),),
                ),
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(_)=> TermsAndConditions()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                  child: Container(
                    height: h*0.12,
                    width: w,
                    child: Text("*Terms and conditions apply",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,

                      ),),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
