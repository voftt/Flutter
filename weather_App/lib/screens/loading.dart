// import 'package:flutter/material.dart';
// import 'package:weather_app/data/my_location.dart';
// import 'package:weather_app/data/network.dart';
// import 'package:weather_app/screens/weather_screen.dart';
// const apikey = 'b58b5eb3f6d1ed340ef0b47fe9b64cc9';
//
// class Loading extends StatefulWidget {
//    @override
//   State<Loading> createState() => _LoadingState();
// }
//
// class _LoadingState extends State<Loading> {
//
//   double? latitude3;
//   double? longitude3;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getLocation();
//   }
//
//   void getLocation() async {
//     MyLocation myLocation = MyLocation();
//     await myLocation.getMyCurrentLocation();
//     latitude3 = myLocation.latitude2;
//     longitude3 = myLocation.longitude2;
//     print(latitude3);
//     print(longitude3);
//
//     Network network = Network('https://api.openweathermap.org/data/2.5/weather
//         '?lat=$latitude3&lon=$longitude3&appid=$apikey');
//
//     var weatherData = await network.getJsonData();
//     print(weatherData);
//     Navigator.push(context, MaterialPageRoute(builder: (context){
//       return WeatherScreen(parseWeatherData: weatherData,);
//     }));
//   }
//
//   // void fetchData() async{
//   //
//   //     var myJson = parsingData['weather'][0]['description'];
//   //     print(myJson);
//   //
//   //     var wind = arsingData['wind']['speed'];
//   //     print(wind);
//   //
//   //     var id = arsingData['id'];
//   //     print(id);
//   //   }else
//   //     print(resoponse.statusCode)
//   // }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//             onPressed: null,
//             child: Text(
//             'Get my location',
//           style: TextStyle(
//             color: Colors.white
//         ),
//       ),
//       ),
//     ),
//     );
//   }
// }
