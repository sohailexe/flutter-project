import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
        title: appTitle,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              leading: Icon(Icons.menu),
              title: Text("hello"),
              actions: [
                Icon(Icons.search),
                Icon(Icons.more_vert),
              ],
              elevation: 0,
            ),
            body: ListView(
              // mainAxisSize: MainAxisSize.,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )),
                ),
              ],
            )));
  }
}
