import 'dart:math';

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
  int data = 1;

  Random random = Random();

  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Add Item list")),
        body: ListView(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [],
            // ),
            Column(
              // mainAxisSize: MainAxisSize.max,
              children: widgets,
            )
          ],
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    widgets.add(Container(
                        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey,
                                blurRadius: 15.0,
                              )
                            ],
                            color: Color.fromARGB(255, random.nextInt(256),
                                random.nextInt(256), random.nextInt(256))),
                        padding: EdgeInsets.all(20),
                        child: Text("Ini adalah data ke-" + data.toString())));
                    data++;
                  });
                },
                child: Text("Tambahkan Data")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    widgets.removeLast();
                    data--;
                  });
                },
                child: Text("Kurangi Data")),
          ],
        ),
      ),
    );
  }
}
