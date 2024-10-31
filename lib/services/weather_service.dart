import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = 'fbdcdf41dca74c3998c154851242109';
  WeatherService(this.dio);
  Future<WeatherModel?> getCurrentWeather({required String cityName}) async {

      try {
        Response response = await dio
            .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName%20&days=1');
          WeatherModel weatherModel = WeatherModel.fromJson(response.data);
          return weatherModel;
      } on DioException catch (e) {
        final String errMessage = e.response?.data['error']['message']?? 'oops there was an error, try later';
        throw Exception(errMessage);

      }
      catch(e){
        print(e.toString());
        throw Exception('oops there was an error, try later');
      }

  }
}
