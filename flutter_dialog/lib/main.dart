import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dialog App",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}


class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog test"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child: Text(
                "tesssssst",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () => {
                dialog(context)
              },
            )
          ],
        ),
      ),
    );
  }

  void dialog(context){
    showDialog(
      context: context,
      barrierDismissible: false, // 다이얼로그 외곽 터치 시 dismiss 가능 여부
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // 다이얼로그 박스 모서리 라운드 처리
          ),
          title: Column(
            children: <Widget>[
              Text("Dialog Test")
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min, // 다이얼로그 content 사이즈
            crossAxisAlignment: CrossAxisAlignment.start, // content 정렬 위치
            children: <Widget>[
              Text("Dialog Content")
            ],
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text("확인"),
              onPressed: () {
                Navigator.pop(context); // 다이얼로그 닫기
              },
            ),
          ],
        );
      },
    );
  }
}
