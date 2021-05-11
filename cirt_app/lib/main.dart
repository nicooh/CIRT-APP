import 'package:cirt_app/component/bottom_bar.dart';
import 'package:cirt_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarDividerColor: Colors.black,
        systemNavigationBarIconBrightness:
            Brightness.dark // navigation bar color
        ));
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomBarScreen(), //MyHomePage(title: "App vaccini"),
      debugShowCheckedModeBanner: false,
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
  int currentSectionActive = 0;

  final tabs = [
    Center(child: Text('Home')),
    Center(child: Text('Mappa')),
    Center(child: Text('Impostazioni')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: false,
        //brightness: Brightness.dark,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: Colors.green),
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
      ),

      body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //verticale
            crossAxisAlignment: CrossAxisAlignment.center, //orizzontale
            children: <Widget>[
              Container(
                child: tabs[currentSectionActive],
              )
            ],
          )),

      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 64.0,
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
