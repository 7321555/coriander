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
            Image.network(
              'https://msp.c.yimg.jp/images/v2/FUTi93tXq405grZVGgDqG_omiYkNVym1Sd6g5T38MuTBDc4e9p3cTQ3M1cJm6kfTK88YlTzfcuQ6W_b4onsNywk1fR8TsHDdIMs7TLDMtq2TCQcl-EJtKD-u4aSSMV8MhQpNUtQJPdVAV2Q-kVb1YVynuPBnkyQpIN0QoaSX2nJ1SVbYiL2x0RvslEsQFmXYASraPCgDDS4zcOzn1JC61_KqbfcCHmDsiUbP039xUI4=/jyzDDRzj.jpg?errorImage=false',
            ),
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