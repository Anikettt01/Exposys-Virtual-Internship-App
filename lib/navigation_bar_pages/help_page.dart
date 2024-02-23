import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});



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
            padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 80),
            child: Container(
              height: h*0.1,
              width: w,
              child: Text("For any query contact us as:",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              height: h*0.09,
              child: RichText(text:TextSpan(
                text: "➤  General: ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25
                ),
                children: [
                  TextSpan(
                    text: "hr@exposysdata.com",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                        fontSize: 25,
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
                        path: 'hr@exposysdata.com'
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
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              height: h*0.09,
              child: RichText(text:TextSpan(
                text: "➤  Jobs: ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25
                ),
                children: [
                  TextSpan(
                    text: "hr@exposysdata.com",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                        fontSize: 25,
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
                              path: 'hr@exposysdata.com'
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
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              height: h*0.09,
              child: RichText(text:TextSpan(
                text: "➤  Phone:  ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25
                ),
                children: [
                  TextSpan(
                    text: "+917795207065",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                         {
                          String? encodeQueryParameters(Map<String, String> params) {
                            return params.entries
                                .map((MapEntry<String, String> e) =>
                            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                .join('&');
                          }

                          final Uri phoneNumber = Uri(
                              scheme: 'tel',
                              path: '+917795207065'
                          );
                          try {
                            await launchUrl(phoneNumber);
                          }catch(e) {
                            print(e.toString());
                          };
                        }
                      }

                  )



                ],
              ),
              ),
            ),
          ),
        ]
    )
    )
        )
    );

  }
}
