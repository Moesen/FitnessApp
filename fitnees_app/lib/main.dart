import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder> {
        '/home':           (BuildContext context) => new Home(),
        '/currentWorkout': (BuildContext context) => new CurrentWorkout(),
        '/changeWork':     (BuildContext context) => new ChangeWorkout(),
        '/changeStrength': (BuildContext context) => new ChangeStrength(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          body1: TextStyle(
            fontSize: 15,
            fontStyle: FontStyle.italic,
            fontFamily: "Roboto",
          )
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold (
      appBar: myAppBar,
      body: ListView(
        children: <Widget>[
          mainScreenButton('current', '/currentWorkout', "Current Workout", context, "Go to do you current workout"),
          mainScreenButton('workout', '/changeWork', "Change Workout", context, "Change your workout scheme"),
          mainScreenButton('strength', '/changeStrength', "Change Strength", context, "Take a test, to update your strength"),
        ],
      )
    );
  }

  Container mainScreenButton(String tag, String path, String text, BuildContext context, String explanation) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
                Text(explanation, style: Theme.of(context).textTheme.body1,)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          child: GestureDetector(
            child: Hero(
              tag: tag,
              child: Icon(Icons.navigate_next, color: Colors.cyan,),
            ),
            onTap: (() => Navigator.of(context).pushNamed(path)),
          ),
          ),
        ],
      ),
    );
  }
}

class CurrentWorkout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: Center(
        child: FlatButton(onPressed: (() =>Navigator.pop(context)), child: null),
      ),
    );
  }

}

class ChangeWorkout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
    );
  }

}

class ChangeStrength extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
    );
  }

}

Widget myAppBar = AppBar(
  backgroundColor: Colors.white,
  centerTitle: true,
  title: Image(image: AssetImage('images/bigLogo.png')),
);