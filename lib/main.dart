import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffa3ac92),
          title: Text('Jaechang'),
          centerTitle: true,
          elevation: 0.2,
          leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                print('yammy');
              }
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                print('ㅅㅊ');
              },
            ),
            IconButton(
              icon:Icon(Icons.add_business_sharp),
              onPressed: (){
                print('비즈니스!');
              },
            ),
            IconButton(
              icon:Icon(Icons.add_alert),
              onPressed: (){
                print('알럿');
              },
            )
          ],
        ),
        body: Container(
          height: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Image.asset('3.GIF',width: 200,height: 200),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('3D 갤럭시 버즈 팝니다 개좋음 ',textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                  Text('광주광역시 광산구 수완동',textAlign: TextAlign.left,style: TextStyle(color: Colors.grey)),
                  Text('210000원',textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite_border),
                    Text('2'),
                  ],
                )],
              )],
          ),
        ),
        bottomNavigationBar: BottomAppBar(),
      ),
    );
  }
}
