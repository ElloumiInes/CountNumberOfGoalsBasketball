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
  int nbPointTeamA = 0;
  int nbPointTeamB = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text("Point Counter"),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 70),
            height: 430,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Team A",
                          style: TextStyle(fontSize: 28),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 0.2),
                          child: Text("$nbPointTeamA",
                              style: TextStyle(fontSize: 120)),
                        ),
                        Container(
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    nbPointTeamA++;
                                    setState(() {});
                                  },
                                  child: Text(
                                    "Add 1 point",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange)),
                              ElevatedButton(
                                onPressed: () {
                                  nbPointTeamA += 2;
                                  setState(() {});
                                },
                                child: Text(
                                  "Add 2 point",
                                  style: TextStyle(color: Colors.black),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  nbPointTeamA += 3;
                                  setState(() {});
                                },
                                child: Text(
                                  "Add 3 point",
                                  style: TextStyle(color: Colors.black),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                        height: 300,
                        child: VerticalDivider(color: Colors.grey)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Team B",
                          style: TextStyle(fontSize: 28),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 0.2),
                          child: Text("$nbPointTeamb",
                              style: TextStyle(fontSize: 120)),
                        ),
                        Container(
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    nbPointTeamB++;
                                    setState(() {});
                                  },
                                  child: Text(
                                    "Add 1 point",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange)),
                              ElevatedButton(
                                onPressed: () {
                                  nbPointTeamB += 2;
                                  setState(() {});
                                },
                                child: Text(
                                  "Add 2 point",
                                  style: TextStyle(color: Colors.black),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  nbPointTeamB += 3;
                                  setState(() {});
                                },
                                child: Text(
                                  "Add 3 point",
                                  style: TextStyle(color: Colors.black),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(
                  flex: 2,
                ),
                ElevatedButton(
                    onPressed: () {
                      nbPointTeamB = 0;
                      nbPointTeamA = 0;
                      setState(() {});
                    },
                    child: Text(
                      "Rest",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(100, 40))),
              ],
            ),
          ),
        ));
  }
}