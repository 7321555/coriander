import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title:'Flutter Demo Home Page'),
      // initialRoute: '/',
      // routes: {
      //   // When navigating to the "/" route, build the FirstScreen widget.
      //   '/': (context) => MyHomePage(title: '',),
      //   // When navigating to the "/second" route, build the SecondScreen widget.
      //   '/second': (context) => NextPage(),
      // },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = List<String>.generate(10000, (i) => "Item $i");


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('カウントアップAPP'),
        actions: <Widget>[Icon(Icons.add),Icon(Icons.share),]
      ),
      body: Container(
        width: double.infinity,
        child:GridView.count(
          crossAxisCount: 1,
          children: List.generate(5, (index) {
            return Column(
              children:<Widget>[
                Expanded(
                    child: Image.network(
                        'https://pbs.twimg.com/profile_images/1408571495350034440/jyzDDRzj_400x400.jpg'
                    ,),),
                Text('$index'),
              ]
            );
          }),
        ),


      ),

    );
  }
}

