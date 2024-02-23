import 'package:exposys_virtual_internship_app/Domain_pages/UX_designer_page.dart';
import 'package:exposys_virtual_internship_app/Domain_pages/app_developer_page.dart';
import 'package:exposys_virtual_internship_app/Domain_pages/cyber_security_page.dart';
import 'package:exposys_virtual_internship_app/Domain_pages/data_science_page.dart';
import 'package:exposys_virtual_internship_app/Domain_pages/mernstack_developer_page.dart';
import 'package:exposys_virtual_internship_app/Domain_pages/software_developer_page.dart';
import 'package:flutter/material.dart';

import '../Domain_pages/full_stack_developer_page.dart';
import '../Domain_pages/IOT_developer_page.dart';

class AvailableInternships extends StatefulWidget {
  const AvailableInternships({super.key});

  @override
  State<AvailableInternships> createState() => _AvailableInternshipsState();
}

class _AvailableInternshipsState extends State<AvailableInternships> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Exposys Virtual Datalabs",
              style: TextStyle(
                  fontSize: 25
              ),
            ),
            accountEmail:Text("Bengaluru, India",
              style: TextStyle(
                  fontSize: 18
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.black
            ),
          ),
          ListTile(
            leading: Icon(Icons.school,
              size: 22,
              color: Colors.black,),
            title: Text("App Developer",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(_)=> AppDeveloper()));
            },
          ),

          ListTile(
            leading: Icon(Icons.school,
              size: 22,
              color: Colors.black,),
            title: Text("Software Developer",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(_)=> SoftwareDeveloper()));
            },

          ),
          ListTile(
            leading: Icon(Icons.school,
                size: 22,
                color: Colors.black),
            title: Text("Full Stack Developer",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder:(_)=> FullStackDeveloper()));
             }
          ),
          ListTile(
            leading: Icon(Icons.school,
                size: 22,
                color: Colors.black),
            title: Text("Mern Stack Developer",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(_)=> MernStackDeveloper()));
              }
          ),
          ListTile(
            leading: Icon(Icons.school,
                size: 22,
                color: Colors.black),
            title: Text("Internet of Things",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder:(_)=> IOTDeveloper()));
             }
          ),
          ListTile(
            leading: Icon(Icons.school,
                size: 22,
                color: Colors.black),
            title: Text("Data Science",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(_)=> DataScience()));
            }
          ),

          ListTile(
              leading: Icon(Icons.school,
                  size: 22,
                  color: Colors.black),
              title: Text("Cyber Security",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(_)=> CyberSecurity()));
              }
          ),
          ListTile(
              leading: Icon(Icons.school,
                  size: 22,
                  color: Colors.black),
              title: Text("UI/UX Designer",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(_)=> UI_UX_Designer()));
              }
          )
        ],
      ),
    );
  }
}
