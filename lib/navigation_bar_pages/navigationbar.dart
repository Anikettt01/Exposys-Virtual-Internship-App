import 'package:exposys_virtual_internship_app/navigation_bar_pages/Contact_us.dart';
import 'package:exposys_virtual_internship_app/navigation_bar_pages/about_us.dart';
import 'package:exposys_virtual_internship_app/navigation_bar_pages/available_internships.dart';
import 'package:exposys_virtual_internship_app/navigation_bar_pages/help_page.dart';
import 'package:exposys_virtual_internship_app/navigation_bar_pages/terms_and_conditions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});
  String dropdownValue = 'one';

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
            title: Text("Internships",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(_)=> AvailableInternships()));
            },
          ),

          ListTile(
              leading: Icon(Icons.groups_outlined,
                size: 22,
                color: Colors.black,),
              title: Text("About Us",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(_)=> AboutUs()));
              }
          ),
          ListTile(
              leading: Icon(Icons.call,
                  size: 22,
                  color: Colors.black),
              title: Text("Contact US",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(_)=> ContactUs()));
              }
          ),
          ListTile(
              leading: Icon(Icons.help_outline,
                  size: 22,
                  color: Colors.black),
              title: Text("Help",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(_)=> HelpPage()));
              }
          ),
          ListTile(
              leading: Icon(Icons.description,
                  size: 22,
                  color: Colors.black),
              title: Text("Terms and Conditions",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(_)=> TermsAndConditions()));
              }
          ),
          ListTile(
            leading: Icon(Icons.share,
                size: 22,
                color: Colors.black),
            title: Text("Share",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            // onTap: ()
          ),
          Divider(height: 190,),
          ListTile(
              leading: Icon(Icons.logout,
                  size: 22,
                  color: Colors.black),
              title: Text("LogOut",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
              }
          )
        ],
      ),
    );
  }
}
