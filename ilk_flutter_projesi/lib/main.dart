import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
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
      body: Center(
        child: Text(
          "flutter harika",
          textAlign: TextAlign.center,
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ),
  ));
}
