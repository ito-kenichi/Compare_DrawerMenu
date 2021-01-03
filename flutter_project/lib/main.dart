import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/first': (BuildContext context) => MyHomePage(),
        '/second': (BuildContext context) => MySecondPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TestProject'),
      ),
      drawer: new Drawer(
          child: new ListView(
            children: <Widget> [
              new DrawerHeader(child: new Text('Header'),),
              new ListTile(
                title: new Text('First Menu Item'),
                onTap: () {
                  Navigator.of(context).pushNamed('/first');
                },
              ),
              new ListTile(
                title: new Text('Second Menu Item'),
                onTap: () {
                  Navigator.of(context).pushNamed('/second');
                },
              ),
            ],
          )
      ),
      body: new Center(
        child: new Text(
          'Center',
        ),
      ),
    );
  }
}

class MySecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2ページ目'),
      ),
      drawer: new Drawer(
          child: new ListView(
            children: <Widget> [
              new DrawerHeader(child: new Text('Header'),),
              new ListTile(
                title: new Text('First Menu Item'),
                onTap: () {
                  Navigator.of(context).pushNamed('/first');
                },
              ),
              new ListTile(
                title: new Text('Second Menu Item'),
                onTap: () {
                  Navigator.of(context).pushNamed('/second');
                },
              ),
            ],
          )
      ),
      body: Center(
      ),

    );
  }
}
