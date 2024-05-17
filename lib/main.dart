import 'dart:async';

import 'package:flutter/material.dart';
import 'package:homework_36/pages/page2.dart';

void main() {
  runApp(Project());
}

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // timerToNextPage(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                'assets/images/image1.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// void timerToNextPage(BuildContext context) {
//   Timer(Duration(seconds: 5), () {
//     Navigator.of(context).pushReplacement(
//       MaterialPageRoute(
//         builder: (ctx) {
//           return Page2();
//         },
//       ),
//     );
//   });
// }
