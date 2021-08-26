import 'package:flutter/material.dart'; // 기본적으로 임폴트 해야됨

void main() => runApp(TestApp());

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  // 위젯을 리턴함
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 모든 위젯을 가지고있다.
      title: "TestApp", // 앱을 총칭하는 타이틀(앱 목록에 표시됨)
      theme: ThemeData(
        primarySwatch: Colors.blue // 앱에서 기본적으로 사용할 색상 견본
      ),
      home: MyHomePage(), // 앱이 정상적으로 실행되었을때 가장 먼저 화면에 보여주는 경로
    );
  }
}

// 위젯안에 상테가 변하는 요소가 하나라도 있으면 스테이트 풀 위젯으로 만들어야된다.
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( // 빈 앱화면
      appBar: AppBar(
        title: Text("Test App"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("test1"),
            Text("test2"),
            Text("test3")
          ],
        ), // 자식을 세로로 배치한다.
      ), // 여기서 UI를 만듬
    );
  }
}
