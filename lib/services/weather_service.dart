import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = 'aa33b7ccdd884756a6f122754241009';
  WeatherService({required this.dio});

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    //use try because if api dont responsiv correct
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1',
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message']?? 'oops there  was an error';
      throw Exception(errorMessage);
    }
    
    //if there is exception but not dio exception
    catch(e){
      throw Exception('oops there  was an error');
    }

  }
}
