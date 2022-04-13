import 'package:flutter/material.dart';

class Name extends StatefulWidget {
  Name({Key? key}) : super(key: key);

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 80,
              width: double.infinity,
              child: Row(
                children: const [
                  InkWell(
                    child: Icon(Icons.arrow_back),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// appBar: AppBar(
//         elevation: 0,
//         foregroundColor: Colors.black,
//         backgroundColor: Colors.white,
//         title: const Text(
//           'Name',
//           style: TextStyle(
//             fontSize: 25,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//       ),
//       body: Container(
      //   child: const Text("ssdfsd"),
      // ),