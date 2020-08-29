import 'package:flutter/material.dart';

void main(List<String> args) {
  // aşağıda kendi widget ımızı yaptık,sonra yeni bir nesne oluşturduk
  // ve runApp a myApp geçerek çalıştırdık değişen bir şey olmadı
  var myApp = MyApp();
  runApp(myApp);
}

void uzunMethod() {
  debugPrint("Çok uzun içerikli fonksiyon");
}

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
        body: Column(
          children: <Widget>[
            Text(
              "Image ve Buton Türleri",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            IntrinsicHeight(
              //gerçek yükseklik, içine konulan widgetları aynı yük. yapar
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4), //kenarları açtık
                      color: Colors.red.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/emre.jpg",
                          ),
                          Text("Asset Image"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.red.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.network(
                              "https://i4.hurimg.com/i/hurriyet/75/1110x740/5b0e5ddabf49c21958da2d8a.jpg"),
                          Text("Network Image"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.red.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            //child: Text("Emre"),
                            backgroundImage: NetworkImage(
                                "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png"),
                            radius: 60,
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                          ),
                          Text("Avatar"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IntrinsicHeight(
              //gerçek yükseklik, içine konulan widgetları aynı yük. yapar
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4), //kenarları açtık
                      color: Colors.red.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FadeInImage.assetNetwork(
                              placeholder: "assets/images/giphy.gif",
                              image:
                                  "https://i4.hurimg.com/i/hurriyet/75/1110x740/5b0e5ddabf49c21958da2d8a.jpg"),
                          //Image.asset(
                          //  "assets/images/emre.jpg",
                          //),
                          Text("FadeIn Image"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4), //kenarları açtık
                      color: Colors.red.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FlutterLogo(
                            size: 60,
                            colors: Colors.orange,
                            style: FlutterLogoStyle.horizontal,
                            textColor: Colors.black,
                          ),
                          Text("Flutter logo"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4), //kenarları açtık
                      color: Colors.red.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: Placeholder(
                              color: Colors.red,
                              strokeWidth: 2.0,
                            ),
                          ),
                          Text("Placeholder widget"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //padding ile itebilmek için container kullandık
              padding: EdgeInsets.symmetric(horizontal: 50), //soldan ve sağdan
              child: Column(
                //Ekrana yaydık
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Emre Altunbilek"),
                    onPressed: () => debugPrint("Fat arrowlu fonksiyon"),
                    color: Colors.orange,
                  ),
                  RaisedButton(
                    child: Text("Flutter ve Dart Dersleri"),
                    onPressed: () {
                      debugPrint("Normal lambda expression");
                      debugPrint("İkinci satır");
                    },
                    elevation: 12,
                    textColor: Colors.yellow,
                    color: Colors.purple,
                  ),
                  RaisedButton(
                    child: Text("Hızla devam ediyor"),
                    onPressed: () {
                      uzunMethod();
                    },
                    elevation: 12,
                    textColor: Colors.black,
                    color: Colors.orange,
                  ),
                  RaisedButton(
                    child: Text("Çalışmaya devam"),
                    onPressed:
                        uzunMethod, //bu şekilde de yazılabiliyor parametresiz
                    elevation: 12,
                    textColor: Colors.black,
                    color: Colors.blue,
                  ),
                  IconButton(
                    icon: Icon(Icons.add_circle_outline, size: 32),
                    onPressed: () {},
                    color: Colors.red,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text("Flat button", style: TextStyle(fontSize: 24)),
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
