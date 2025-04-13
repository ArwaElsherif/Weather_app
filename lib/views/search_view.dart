import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/main.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: _getAppBarColor(context),
        title: Text('Search City', style: TextStyle(color: Colors.black)),
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
                borderSide: BorderSide(color: Colors.black ,width: 2 ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Color _getAppBarColor(BuildContext context) {
  final state = context.read<GetWeatherCubit>().state;
  if (state is WeatherLoadedState) {
    return getThemeColor(state.weatherModel.weatherCondition);
  }
  return Colors.blue;
}
