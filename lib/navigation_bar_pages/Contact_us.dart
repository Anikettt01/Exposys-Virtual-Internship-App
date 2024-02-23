import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 80),
            child: Container(
              height: h * 0.15,
              width: w,
              child: Text(
                "Exposys Data Labs ",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              height: h * 0.32,
              width: w,
              child: Text(
                "P.M R. Residency"
                "Ground Floor, No-5/3 Sy. No.10/6-1"
                "Opp Nithyotsava Wedding Hall"
                "Doddaballapur Main Road"
                "Singanayakanahalli, Yelahanka"
                "Bengaluru, Karnataka 560064",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 23,
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                  height: h * 0.09,
                  child: RichText(
                      text: TextSpan(
                          text: "➤  Phone:  ",
                          style: TextStyle(color: Colors.black, fontSize: 25),
                          children: [
                        TextSpan(
                          text: "+917795207065",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
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
                        ),
                      ]
                      )
                  )
              )
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: h * 0.09,
              child: RichText(
                text: TextSpan(
                  text: "➤  Email: ",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                  children: [
                    TextSpan(
                      text: "hr@exposysdata.com",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
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
        ]
                )
            )
        )
    );
  }
}
