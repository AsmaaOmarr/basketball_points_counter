// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int scoreA = 0;
  int scoreB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text("Points Counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "$scoreA",
                      style: TextStyle(
                        fontSize: 120,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            scoreA += 1;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amberAccent,
                          fixedSize: Size(120, 30),
                        ),
                        child: Text("Add 1 Point")),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            scoreA += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amberAccent,
                            fixedSize: Size(120, 30)),
                        child: Text("Add 2 Points")),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          scoreA += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amberAccent,
                          fixedSize: Size(120, 30)),
                      child: Text("Add 3 Points"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "$scoreB",
                      style: TextStyle(
                        fontSize: 120,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            scoreB += 1;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amberAccent,
                          fixedSize: Size(120, 30),
                        ),
                        child: Text("Add 1 Point")),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            scoreB += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amberAccent,
                            fixedSize: Size(120, 30)),
                        child: Text("Add 2 Points")),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          scoreB += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amberAccent,
                          fixedSize: Size(120, 30)),
                      child: Text("Add 3 Points"),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    scoreA = 0;
                    scoreB = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                  fixedSize: Size(120, 30),
                ),
                child: Text("Reset")),
          ],
        ),
      ),
    );
  }
}
