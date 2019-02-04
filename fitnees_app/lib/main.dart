import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder> {
        '/home':    (BuildContext context) => new Home(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2,
          ),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold (
      appBar: new AppBar(

      ),
      body: ListView(

        children: <Widget>[

        ],
      )
    );
  }

  Container mainScreenButton(String tag, String path, String text, String) {
    return Container();
  }

}

