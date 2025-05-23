
import 'package:weather_app/models/weather_model.dart';

class WeatherState {
}

class NoWeatherState extends WeatherState{ 
}

class WeatherLoadedState extends WeatherState{
 final WeatherModel weatherModel;

  WeatherLoadedState({required this.weatherModel});
}
class WeatherFailureState extends WeatherState{
  final String error;

  WeatherFailureState({required this.error});
}