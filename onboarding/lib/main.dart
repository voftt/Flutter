import 'package:flutter/material.dart';
import 'onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoardingPage(),
    );
  }
}

class Mypage extends StatelessWidget {
  const Mypage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Main Screen',
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),
            ),
            ElevatedButton(
                onPressed: (){},
                child: const Text('Go to onboarding screen'),
            ),
          ],
        )
      )
    );
  }
}