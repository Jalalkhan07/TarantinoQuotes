import 'package:flutter/material.dart';

import '';
import 'navbar.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          'Company Profile',
          style: TextStyle(color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(40),
                    child: Image.asset('images/McDonalds_dp.png'),
                  ),
                ),
                Text(
                  'Multinational Fast Food Chain',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 20,
                width: 220,
                child: Divider(
                  color: Colors.black,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                title: Text(
                  '91+99488-73162',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                title: Text(
                  'myfeed@mcdonaldsindia.com ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(
                  Icons.web,
                  color: Colors.black,
                ),
                title: Text(
                  'www.mcdonaldsindia.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(
                  Icons.location_city_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  ' D.no:10/2, Nehru Road,\n Anna Nagar, Chennai\n Tamil Nadu 600040',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
