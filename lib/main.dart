import 'package:flutter/material.dart';

void main() {
  runApp(Project());
}

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

// void timerToNextPage(context) {
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
