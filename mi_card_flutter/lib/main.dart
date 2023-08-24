import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/daniel.jpg'),
                ),
                Text(
                  "Daniel Biru",
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'SOFTWARE DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'Source Sans 3',
                    fontSize: 20,
                    color: Color.fromARGB(255, 178, 223, 219),
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 150,
                  child: Divider(
                    color: Color.fromARGB(255, 178, 223, 219),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 0, 77, 64),
                      ),
                      title: Text(
                        '+251 915 912 908',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 77, 64),
                          fontFamily: 'Source Sans 3',
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 0, 77, 64),
                      ),
                      title: Text(
                        'dbiru49@gmail.com',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 77, 64),
                          fontFamily: 'Source Sans 3',
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
