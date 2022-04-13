import 'package:flutter/material.dart';
import 'package:flutter_application_1/createaccount/createaccount.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        margin: const EdgeInsets.all(0),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Icon(
              Icons.facebook,
              color: Colors.blue[700],
              size: 60.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.add,
                      color: Colors.blue[700],
                      size: 30.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue[50],
                    ),
                    margin: const EdgeInsets.only(right: 15),
                  ),
                  Text(
                    'Log Into Another Account',
                    style: TextStyle(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ],
              ),
              style: ButtonStyle(
                overlayColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFEEEEEE)),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.fromLTRB(30, 10, 40, 10)),
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.search,
                      color: Colors.blue[700],
                      size: 30.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue[50],
                    ),
                    margin: const EdgeInsets.only(right: 15),
                  ),
                  Text(
                    'Find Your Acount',
                    style: TextStyle(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ],
              ),
              style: ButtonStyle(
                overlayColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFEEEEEE)),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.fromLTRB(30, 10, 40, 10)),
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
            ),
            const SizedBox(
              height: 270,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const CreatApp();
                  },
                ));
              },
              child: Text(
                "CREATE NEW FACEBOOK ACCOUNT",
                style: TextStyle(
                    color: Colors.blue[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.5),
              ),
              style: ButtonStyle(
                overlayColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFEEEEEE)),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.fromLTRB(40, 10, 40, 10)),
                elevation: MaterialStateProperty.all(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFE3F2FD)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
    );
  }
}
