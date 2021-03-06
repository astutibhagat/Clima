import 'package:climate/screens/location_screen.dart';
import 'package:climate/services/location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:climate/services/weather.dart';

class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState()
  {
    super.initState();
    geoLocationData() ;
  }
void geoLocationData() async
{

var weatherData= await WeatherModel().getLocationWeather();
 Navigator.push(context, MaterialPageRoute(builder: (context){
   return LocationScreen(locationWeather: weatherData,);
 }));
}



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),

//      body: Center(
//        child: RaisedButton(
//          onPressed: () {
//            getLocation();
//          },
//          child: Text('Get Location'),
//        ),
//      ),
    );
  }
}
