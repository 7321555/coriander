import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
          title: Text('次の画面'),
          actions: <Widget>[Icon(Icons.add), Icon(Icons.share),]
      ),
      body: Container(
        height: double.infinity,
        color: Colors.green,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(name),
            Center(
              child: ElevatedButton(
                child:Text('戻る'),
                onPressed: () {
                  //ここに押したら反応させたいコードをかく=画面遷移
                  Navigator.pop(context , 'Good job!');},
              ),
            ),
          ],
        ),
      ),
    );
  }
}