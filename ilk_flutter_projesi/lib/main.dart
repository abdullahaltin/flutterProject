import 'package:flutter/material.dart';
import 'ui/liste_dersleri.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: "Flutter Dersleri",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Liste Dersleri"),
        ),
        body: ListeKonuAnlatimi(),
      ),
    ),
  );
}
