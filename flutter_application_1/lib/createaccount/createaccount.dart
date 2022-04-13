import 'package:flutter/material.dart';
import 'package:flutter_application_1/createaccount/nextname.dart';

class CreatApp extends StatelessWidget {
  const CreatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: const Text(
          'Create account',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Image.asset("images/1.png"),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
          Column(
            children: const [
              Text(
                'Join Facebook',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "We'll help you create a new account in a few easy steps.",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF757575),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return Name();
                    },
                  ));
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Next",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 250,
              ),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            10, 20, 10, 20),
                                        child: const Text(
                                          "Do you want to stop creating\nyour account?",
                                          style: TextStyle(
                                              /*fontWeight: FontWeight.bold,*/ fontSize:
                                                  20),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            30, 0, 10, 20),
                                        child: const Text(
                                          "If you stop now, you'll lose any progress you've made.",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              letterSpacing: 0.5,
                                              /* fontWeight: FontWeight.bold,*/
                                              color: Color(0xFF757575),
                                              fontSize: 17.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        height: 100,
                                        width: 95,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(0),
                                              margin: const EdgeInsets.all(10),
                                              child: const Text(
                                                  'Continue creating account',
                                                  style: TextStyle(
                                                    fontSize:
                                                        16, /* fontWeight: FontWeight.bold,*/
                                                  )),
                                            ),
                                          ),
                                          InkWell(
                                              onTap: () {
                                                Navigator.of(context).pop();
                                                Navigator.of(context).pop();
                                              },
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(0),
                                                margin:
                                                    const EdgeInsets.all(10),
                                                child: const Text(
                                                    'Stop creating account',
                                                    style: TextStyle(
                                                        /* fontWeight: FontWeight.bold,*/
                                                        fontSize: 16,
                                                        color:
                                                            Color(0xFF1565C0))),
                                              )),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: const Text(
                    'Already have an account?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xFF1565C0)),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
