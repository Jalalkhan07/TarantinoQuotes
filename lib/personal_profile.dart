import 'package:flutter/material.dart';

import 'navbar.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          'Personal Profile',
          style: TextStyle(color: Colors.black,

          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage('images/personal_profile_image.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Mr.Jalal Khan',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    title: Text(
                      '+91 99428-73366',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    title:Text('mrjalalkhan07@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'PersonalProfile',
          style: TextStyle(color: Colors.black87),
        ),
      ),
    );
  }
}
 body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('image/jalal.webp'),
          )

        ],
      )),
    )
 */
