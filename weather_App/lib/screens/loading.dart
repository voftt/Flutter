import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
   @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
    fetchData();
  }

  void getLocation() async {
    try {
      Position position = await Geolocator.
      getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      print(position);
    }catch(e){
      print("No internet");
    }

  }

  void fetchData() async{
    Response response=await get(Uri.parse('https://samples.openweathermap.org/data/2.5/weather?'
        'q=London&appid=b1b15e88fa797225412429c1c50c122a1'));
    print(response.body);
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: null,
            child: Text(
            'Get my location',
          style: TextStyle(
            color: Colors.white
        ),
      ),
      ),
    ),
    );
  }
}
