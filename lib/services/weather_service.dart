import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  WeatherService({required this.dio});

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Response response = await dio.get(
      'http://api.weatherapi.com/v1/forecast.json?key=aa33b7ccdd884756a6f122754241009&q=$cityName&days=1',
    );

    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
