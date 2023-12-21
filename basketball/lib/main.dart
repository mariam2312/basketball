import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  MyApp();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int point1 = 0;

  int point2 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        '$point1',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            point1++;
                          });
                        },
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(140, 50)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            point1 = point1 + 2;
                          });
                        },
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(140, 50)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            point1 = point1 + 3;
                          });
                        },
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(140, 50)),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        point2.toString(),
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            point2++;
                          });
                        },
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(140, 50)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            point2 = point2 + 2;
                          });
                        },
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(140, 50)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            point2 = point2 + 3;
                          });
                        },
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(140, 50)),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  point1 = 0;
                  point2 = 0;
                });
              },
              child: const Text(
                'reset',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange, minimumSize: const Size(200, 60)),
            ),
          ],
        ),
      ),
    );
  }
}
