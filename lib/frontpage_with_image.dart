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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  String x = '次へ';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Image.asset('images/hono.jpg'),
            Icon(
                Icons.library_music,
                size:100
            ),


            // Image.network(
            //   'https://msp.c.yimg.jp/images/v2/FUTi93tXq405grZVGgDqG_omiYkNVym1Sd6g5T38MuTBDc4e9p3cTQ3M1cJm6kfTK88YlTzfcuQ6W_b4onsNywk1fR8TsHDdIMs7TLDMtq2TCQcl-EJtKD-u4aSSMV8MhQpNUtQJPdVAV2Q-kVb1YVynuPBnkyQpIN0QoaSX2nJ1SVbYiL2x0RvslEsQFmXYASraPCgDDS4zcOzn1JC61_KqbfcCHmDsiUbP039xUI4=/jyzDDRzj.jpg?errorImage=false',
            // ),

            ElevatedButton(
              child:Text(x),
              onPressed: () async{
                //ここに押したら反応させたいコードをかく=画面遷移
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextPage('Have a nice day!'),
                  ),
                );
                x = result;
                print(result);
                // Navigator.pushNamed(context, '/second');
              },

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
