import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('assets/images/image2.png'),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
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
    );
  }
}
