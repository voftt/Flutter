import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold( // 상 중 하 레이아웃 나눔.
          appBar: AppBar(title: Text('맨 위')),
          body: SizedBox(
            child : IconButton(
              icon: Icon(Icons.earbuds),
              onPressed: (){},

              )
            ),



          )
          // body: Align(
          //   alignment: Alignment.topCenter,
          //   child: Container(
          //     width: double.infinity,  height: 80,//폭을 무한(부모 박스 내에서)
          //     margin: EdgeInsets.fromLTRB(0,30,0,0), padding: EdgeInsets.all(20),
          //     decoration: BoxDecoration(
          //       border: Border.all(color: Colors.black)
          //     ),
          //   ),
          // ),
    );

          //
          // bottomNavigationBar: BottomAppBar(
          //   child: SizedBox(
          //     height: 100,
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         Icon(Icons.phone),
          //
          //       ],
          //     ),
          //   )
          // ),
    //     )
    // );
  }
}