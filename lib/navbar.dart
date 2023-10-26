
import 'package:flutter/material.dart';
import 'package:flutter_pageveiw_text_jalal/company_profile.dart';
import 'package:flutter_pageveiw_text_jalal/pageveiw-text.dart';
import 'package:flutter_pageveiw_text_jalal/pageview_image.dart';
import 'package:flutter_pageveiw_text_jalal/personal_profile.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(accountName: Text(
            'Quentin Tarantino',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ), accountEmail: Text(
            'Version 1.0',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
            currentAccountPicture: ClipOval(
              child: Image.asset('images/dp_tarantino.jpg',
              height: 250,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            decoration:BoxDecoration(
              image: DecorationImage(image: AssetImage('images/navbar1_image.jpg',
              ),
              fit: BoxFit.cover,
              ),
            ) ,

          ),
          ListTile(
            title: Text(
              'Quotes Text',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context)=> PageVeiwText())
              );
            },
          ),
          ListTile(
            title: Text(
              'Quotes Image',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: (){
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PageviewImageScreen())
              );
            },
          ),
          ListTile(
            title: Text(
              'Personal Profile',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: (){
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PersonalProfile())
              );
            },
          ),
          ListTile(
            title: Text(
              'Company Profile',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => CompanyProfile())
              );
            },

          ),
        ],
      ),
    );
  }
}
