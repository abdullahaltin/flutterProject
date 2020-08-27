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
      body: Container(
        color: Colors.red,
        child: Row(
          //mainAxisSize: MainAxisSize.min,
          mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(
              Icons.add_circle,
              size: 64,
              color: Colors.yellow,
            ),
            Icon(
              Icons.add_circle,
              size: 64,
              color: Colors.blue,
            ),
            Icon(
              Icons.add_circle,
              size: 64,
              color: Colors.orange,
            ),
            Icon(
              Icons.add_circle,
              size: 64,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    ),
  ));
}

/*

------

Container(
        //Box boş olursa parent kadar, değilse verilen değer kadar
        constraints: BoxConstraints.expand(
          height: 400,
          width: 400,
        ),
        //margin: EdgeInsets.all(20),
        //margin: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
        //margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),

        //padding container içinde bulunan widgetlara uygulanıyor
        //padding: EdgeInsets.all(30),
        padding: EdgeInsets.only(top: 120),

        //height: 300,
        //width: 300,
        //alignment: Alignment.center,
        color: Colors.green.shade200,
        child: Text(
          "Flutter Dersleri by Emre Altunbilek",
          style: TextStyle(
            fontSize: 48.0,
            //color: Colors.red,
          ),
          textAlign: TextAlign.center,
        ),
      ),
-------

Center(
        child: Container(
          height: 300,
          width: 300,
          alignment: Alignment(0, 2),
          color: Colors.green.shade200,
          child: Text(
            "Flutter CheatSheet",
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),


--------
body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: <Widget>[
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints(
                        maxHeight: 300,
                        maxWidth: 200,
                        minHeight: 150,
                        minWidth: 150),
                    //height: 150,
                    //width: 150,
                    color: Colors.red,
                    child: Text(
                      "Emir",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    color: Colors.blue,
                    child: Text(
                      "Emre",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),

--------

Container(
        //height: 300,
        //width: 300,
        alignment: Alignment.center,
        //eğer büyüklüğü belli değilse container bulunduğu yer kadar büyür
        //sınırlandırmak istiyorsak genişlik ve yükseklik vermeliyiz
        child: Text(
          "flutter is the best",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
        ),
        color: Colors.green.shade200,
      ),
 */
