import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.orange,
        //floatingActionButton default rengi accentColor olan renktir
        //tüm widget lara uygulanacaktır.
      ),
      home: new Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Dersleri",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("FAB tıklandı");
          },
          //backgroundColor: Colors.green,
          child: Icon(
            Icons.access_alarms,
            color: Colors.white,
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(2),
                  color: Colors.red.shade100,
                  child: Text("D", style: TextStyle(fontSize: 24)),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(2),
                  color: Colors.red.shade300,
                  child: Text("A", style: TextStyle(fontSize: 24)),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(2),
                  color: Colors.red.shade500,
                  child: Text("R", style: TextStyle(fontSize: 24)),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(2),
                  color: Colors.red.shade700,
                  child: Text("T", style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.red.shade200,
              child: Text("E", style: TextStyle(fontSize: 24)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.red.shade300,
              child: Text("R", style: TextStyle(fontSize: 24)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.red.shade400,
              child: Text("S", style: TextStyle(fontSize: 24)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.red.shade500,
              child: Text("L", style: TextStyle(fontSize: 24)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.red.shade600,
              child: Text("E", style: TextStyle(fontSize: 24)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.red.shade700,
              child: Text("R", style: TextStyle(fontSize: 24)),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(24, 20, 24, 20),
              margin: EdgeInsets.all(2),
              color: Colors.red.shade800,
              child: Text("İ", style: TextStyle(fontSize: 24)),
            ),
          ],
        ),
      ),
    ),
  );
}
