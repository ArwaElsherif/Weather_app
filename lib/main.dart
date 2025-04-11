import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: CustomMaterialAPP(),
    );
  }
}

class CustomMaterialAPP extends StatelessWidget {
  const CustomMaterialAPP({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: HomeView(),
      theme: ThemeData(
        primarySwatch: getThemeColor(
          BlocProvider.of<GetWeatherCubit>(context).weatherModel?.weatherCondition,
          ),
      ),
      );
  }
}


MaterialColor getThemeColor(String? condition) {
  if(condition==null){
    return Colors.blue;
  }
  if (condition == 'Sunny' || condition == 'Clear' || condition == 'Partly cloudy' || condition == 'Overcast' || condition == 'Mist') {
    return Colors.orange;
  } else if (condition == 'Heavy rain' ||
      condition == 'Patchy rain possible' ||
      condition == 'Patchy light drizzle' ||
      condition == 'Light drizzle' ||
      condition == 'Freezing drizzle' ||
      condition == 'Heavy freezing drizzle' ||
      condition == 'Patchy light rain' ||
      condition == 'Light rain' ||
      condition == 'Moderate rain at times' ||
      condition == 'Moderate rain' ||
      condition == 'Heavy rain at times' ||
      condition == 'Light freezing rain' ||
      condition == 'Moderate or heavy freezing rain' ||
      condition == 'Light rain shower' ||
      condition == 'Moderate or heavy rain shower' ||
      condition == 'Torrential rain shower' ||
      condition == 'Patchy light rain with thunder' ||
      condition == 'Moderate or heavy rain with thunder') {
    return Colors.blue;
  } else {
    // All other conditions — snow, fog, thunder, etc.
    return Colors.blueGrey;
  }
}

