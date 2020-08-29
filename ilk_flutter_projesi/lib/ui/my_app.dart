import 'package:flutter/material.dart';
import 'resim_ve_buton_turleri.dart';
import 'row_column_odev.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ekrana çizilecek widget ı geri döndürür
    return MaterialApp(
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
        //body: ResimveButonTurleri(),
        body: RowColumnOdevCozumu(),
      ),
    );
  }
}
