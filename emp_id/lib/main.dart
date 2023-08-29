import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: EmpCard(),
  ));
}

class EmpCard extends StatefulWidget {
  const EmpCard({super.key});

  @override
  State<EmpCard> createState() => _EmpCardState();
}

class _EmpCardState extends State<EmpCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('NINJA ID CARD'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb.jpg'),
                radius: 40.0,
              ),
            ),
            const Divider(
              height: 60.0,
              color: Color.fromARGB(255, 66, 66, 66),
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Daniel-bee',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 215, 64),
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '$ninjaLevel',
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 215, 64),
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Row(
              children: [
                Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 189, 189, 189),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'daniel123_86@live.com',
                  style: TextStyle(
                    color: Color.fromARGB(255, 189, 189, 189),
                    letterSpacing: 1.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
