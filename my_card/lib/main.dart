import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Charactor card",
      home: MyCard(),
    );
  }
}

/// 위젯을 지울때는 하단 괄호부터 지우면 편함

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BBANTO"),
        centerTitle: true, // app bar 타이틀 중앙 정렬
        backgroundColor: Colors.redAccent,
        elevation: 0.0, // appBar 그림자 효과 지우기
      ),
      body: Center( // 중앙 정렬을 해준다. 하지만 Column이 있다면 MainAxisAlignment를 사용해야됨
        child: Column( // Column은 가로는 제한이 있지만 세로로는 제한이 없다. 안드로이드의 세로 match 와같다.
            mainAxisAlignment: MainAxisAlignment.center, // 위젯을 정렬할때 사용
            children: <Widget>[
              Text("Hello"),
              Text("Hello"),
              Text("Hello")
            ],
          ),
      ),
    );
  }
}
