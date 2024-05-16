import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Project());
}

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage('assets/images/image2.png'),
            ),
            SizedBox(
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Set your Schedule',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                '  Quickly see your upcoming event, task,\n     conference calls, weather, and more',
                style: TextStyle(fontSize: 10),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('Get Started'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
