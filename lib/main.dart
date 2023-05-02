import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.cyan,
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Text('국제민원센터 iao'),
                          Expanded(
                              child: Center(
                            child: Text(
                              'IAO 통합 업무 시스템',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                          )),
                          Text('국제민원센터 iao'),
                          Form(
                              child: Container(
                            width: 250,
                            child: Column(
                              children: [
                                TextField(mouseCursor: MouseCursor.uncontrolled),
                                TextField(),
                                SizedBox(height: 24,),
                                ElevatedButton(onPressed: (){}, child: Text('로그인'),)
                              ],
                            ),
                          )),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
