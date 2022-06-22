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
          body: 'This is the first page',
          image: Image.asset('image/IMG_1484.JPG'),
          decoration: getPageDecoraion()
        ),
        PageViewModel(
            title: 'It is mememe',
            body: 'This is the second page',
            image: Image.asset('image/IMG_1931.jpg'),
            decoration: getPageDecoraion()
        ),
        PageViewModel(
            title: 'It is mememe',
            body: 'This is the third page',
            image: Image.asset('image/IMG_4454.JPG'),
            decoration: getPageDecoraion()
        ),
      ],
      done: const Text('done'),
      onDone: (){
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Mypage()),
        );
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
        color: Colors.cyan,
        size: Size(10,15),
        activeSize: Size(25,15),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(44)
        ),
        activeColor: Colors.red
      ),
      curve: Curves.easeInOutSine,
    );
  }
  PageDecoration getPageDecoraion(){
    return PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold
      ),
      bodyTextStyle: TextStyle(
        color: Colors.blue
      ),
      imagePadding: EdgeInsets.only(top: 40),
      pageColor: Colors.orange
    );
  }

}
