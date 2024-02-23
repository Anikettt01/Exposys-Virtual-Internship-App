import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

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
                  height: h*0.2,
                  width: w,
                  child: Text("We are based in Bengaluru India ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold

                ),),
            ),
          ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                  child: Container(
                    height: h*0.4,
                    width: w,
                    child: Text("Exposys Data Labs aims to Solve real world business problems like Automation, "
                        "Big Data and data Science. our core team of experts in various technologies help businesses "
                        "to identify issues,oppurtunities and prototype solutions using trending technologies like "
                        "AI, ML, Deep Learning and Data Science. we follow a human-focussed and not technology "
                        "driven approach to achieve success in our clients endeavours. ",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 22,

                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                  child: Container(
                    height: h*0.28,
                    width: w,
                    child: Text("“Our discoveries are beyond belief and if you’re with us, you’ll discover a newer way to think!” ",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 30,
                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                  child: Container(
                    height: h*0.05,
                    width: w,
                    child: Text("Our Mission",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 30,

                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                  child: Container(
                    height: h*0.1,
                    width: w,
                    child: Text("To Tap and train best brainpower to give solutions for real challenges of the world ",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,

                      ),),
                  ),
                ),

    ]
        )
    )
        )
    );
  }
}
