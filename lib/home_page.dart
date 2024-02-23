import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Domain_pages/app_developer_page.dart';
import 'Domain_pages/cyber_security_page.dart';
import 'Domain_pages/data_science_page.dart';
import 'Domain_pages/full_stack_developer_page.dart';
import 'Domain_pages/IOT_developer_page.dart';
import 'Domain_pages/mernstack_developer_page.dart';
import 'Domain_pages/software_developer_page.dart';
import 'Domain_pages/UX_designer_page.dart';
import 'navigation_bar_pages/navigationbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;

    Widget buildDomainTile(String imagePath, String title, Widget page) {
      return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => page));
        },
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          height: h * 0.26,
          width: w * 0.38,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h * 0.15,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: Center(child: const Text("Exposys Virtual Internship",
        style: TextStyle(
          color: Colors.black
        ),)),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search,color: Colors.black,),
          ),
        ],
      ),
      drawer: NavBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                buildDomainTile(
                  'images/app_developer_icon.png',
                  'App Developer',
                  AppDeveloper(),
                ),
                buildDomainTile(
                  'images/software_developer_icon.png',
                  'Software Developer',
                  SoftwareDeveloper(),
                ),
                buildDomainTile(
                  'images/Fullstack_developer_icon.png',
                  'Full Stack Developer',
                  FullStackDeveloper(),
                ),
                buildDomainTile(
                  'images/meanstack_developer_icon.png',
                  'Mern Stack Developer',
                  MernStackDeveloper(),
                ),
                buildDomainTile(
                  'images/IOT_icon.png',
                  'Internet of Things',
                  IOTDeveloper(),
                ),
                buildDomainTile(
                  'images/data_science_icon.png',
                  'Data Science',
                  DataScience(),
                ),
                buildDomainTile(
                  'images/cyber-security_icon.png',
                  'Cyber Security',
                  CyberSecurity(),
                ),
                buildDomainTile(
                  'images/UI-UX_icon.png',
                  'UI/UX Designer',
                  UI_UX_Designer(),
                ),
              ],
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  launch("https://www.exposysdata.com/registration.php");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "Apply Now",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  final List<String> data = [
    "App Developer",
    "Software Developer",
    "Full Stack Developer",
    "Mern Stack Developer",
    "Internet of things",
    "Data Science",
    "Cyber Security",
    "UI/UX Designer"
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = " ";
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<String> result =
    data.where((e) => e.contains(query.toLowerCase())).toList();
    if (query != null && result.length != 0) {
      return ListView.builder(
        itemCount: result.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(result[index]),
            trailing: Icon(
              Icons.arrow_forward,
            ),
          );
        },
      );
    } else if (query == "") {
      return Text("");
    } else {
      return ListTile(title: Text("No result found"), onTap: () {});
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> matchQuery = [];
    for (var internship in data) {
      if (internship.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(internship);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
          },
        );
      },
    );
  }
}

