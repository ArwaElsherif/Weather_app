import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Weather App', style: TextStyle(color: Colors.white)),
        actions: [IconButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return SearchView();
          }));
        },
         icon: Icon(Icons.search),
         ),
         ],
      ),
      body: WeatherInfoBody(),
    );
  }
}
