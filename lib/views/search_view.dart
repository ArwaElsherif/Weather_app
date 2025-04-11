import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Search City', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: TextField(
            onSubmitted: (value)async{
              BlocProvider.of<GetWeatherCubit>(context).getWeather(cityName: value);
            Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 8),
              labelText: 'Search',
              suffixIcon: Icon(Icons.search,color: Colors.black,),
              hintText: 'Enter city name',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red ,width: 2 ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
