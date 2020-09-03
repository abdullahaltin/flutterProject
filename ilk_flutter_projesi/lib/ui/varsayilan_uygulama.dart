import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        /*textTheme: TextTheme(
          display2: TextStyle(fontSize:12),
        ),*/
        primaryColor: Colors.blue,
      ),
      title: "MaterialApp Title",
      home: MyHomePage(title: "My Home Page 2"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int sayac = 0;

  MyHomePage({this.title}) {
    debugPrint("MyHomePage statefull widget contructor");
  }

  @override
  State<StatefulWidget> createState() {
    debugPrint("MyHomePage create state tetiklendi");
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState() {
    debugPrint("MyHomePageState contructor tetiklendi");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePageState build metodu tetiklendi");
    return Scaffold(
      appBar: AppBar(
        // parmetrenizi elle vermek yerine üst sınıftan isimlendirilmiş contructor ile gönderdik
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _sayacDegeriniArtir();
            debugPrint("sayac degeri arttırıldı set state cagrıldı");
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                _sayacDegeriniArtir();
              },
              child: Text("Artır"),
              color: Colors.yellow,
            ),
            Text(
              "${widget.sayac}",
              style: Theme.of(context).textTheme.display2.copyWith(
                    //copyWith - ile bir üst sınıftan aldığımız değerleri değiştirme yapabiliriz
                    color: widget.sayac <= 0 ? Colors.red : Colors.green,
                  ),
            ),
            RaisedButton(
              onPressed: _sayacDegeriniAzalt,
              child: Text(
                "Azalt",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ),
            FlatButton(
              onPressed: _sayacDegeriniSifirla,
              child: Text(
                "Reset",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.purple,
            )
          ],
        ),
      ),
    );
  }

  void _sayacDegeriniArtir() {
    setState(() {
      widget.sayac++;
      debugPrint("Sayac degeri : ${widget.sayac}");
    });
  }

  void _sayacDegeriniAzalt() {
    setState(() {
      widget.sayac--;
      debugPrint("Sayac degeri : ${widget.sayac}");
    });
  }

  void _sayacDegeriniSifirla() {
    setState(() {
      widget.sayac = 0;
      debugPrint("Sayac degeri : ${widget.sayac}");
    });
  }
}
