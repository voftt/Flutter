import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'It is mememe',
          body: 'hahaha hohoho hehehe page',
          image: Image.asset('image/IMG_1484.JPG')

        ),
        PageViewModel(
            title: 'It is mememe',
            body: 'hahaha hohoho hehehe page'
        ),
        PageViewModel(
            title: 'It is mememe',
            body: 'hahaha hohoho hehehe page'
        ),
      ],
      done: const Text('done'),
      onDone: (){
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const Mypage()),
        );
      },
      next: const Icon(Icons.arrow_forward),
    );
  }
}
