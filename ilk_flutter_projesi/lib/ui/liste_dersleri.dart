import 'package:flutter/material.dart';

class ListeKonuAnlatimi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.teal.shade200,
        margin: EdgeInsets.all(10),
        elevation: 10,
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.android),
            radius: 20,
          ),
          title: Text(
            "Liste elemanı başlık",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "Liste elemanı alt başlık",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          trailing: Icon(Icons.add_circle),
        ),
      ),
    );
  }
}
