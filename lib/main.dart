import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int point_1 = 0;
  int point_2 = 0;
  addpoint(
    int n,
  ) {
    setState(() {
      point_1 = point_1 + n;
    });
  }

  addpoint2(
    int n,
  ) {
    setState(() {
      point_2 = point_2 + n;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text(
              'My counter',
              style: TextStyle(fontSize: 20),
            ),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(fontSize: 35),
                      ),
                      Text(
                        point_1.toString(),
                        style: TextStyle(fontSize: 80),
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange),
                            fixedSize: MaterialStateProperty.all(Size(200, 50)),
                          ),
                          onPressed: () {
                            addpoint(
                              3,
                            );
                            print(point_1);
                          },
                          child: Text(
                            '3 points',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange),
                            fixedSize: MaterialStateProperty.all(Size(200, 50)),
                          ),
                          onPressed: () {
                            addpoint(
                              2,
                            );
                          },
                          child: Text(
                            '2 points',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange),
                            fixedSize: MaterialStateProperty.all(Size(200, 50)),
                          ),
                          onPressed: () {
                            addpoint(
                              1,
                            );
                          },
                          child: Text(
                            '1 points',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                    ],
                  ),
                  SizedBox(
                      height: 400,
                      child: VerticalDivider(
                        indent: 150,
                        thickness: 10,
                        color: Colors.black,
                        width: 20,
                      )),
                  Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(fontSize: 35),
                      ),
                      Text(
                        point_2.toString(),
                        style: TextStyle(fontSize: 80),
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange),
                            fixedSize: MaterialStateProperty.all(Size(200, 50)),
                          ),
                          onPressed: () {
                            addpoint2(
                              3,
                            );
                          },
                          child: Text(
                            '3 points',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange),
                            fixedSize: MaterialStateProperty.all(Size(200, 50)),
                          ),
                          onPressed: () {
                            addpoint2(2);
                          },
                          child: Text(
                            '2 points',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange),
                            fixedSize: MaterialStateProperty.all(Size(200, 50)),
                          ),
                          onPressed: () {
                            addpoint2(1);
                          },
                          child: Text(
                            '1 points',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  ),
                  onPressed: () {
                    setState(() {
                      point_1 = 0;
                      point_2 = 0;
                    });
                  },
                  child: Text(
                    'reset',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
            ],
          )),
    );
  }
}
