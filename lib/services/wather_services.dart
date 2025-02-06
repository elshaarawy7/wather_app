

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:wather_app2/model/Wather_modal.dart';

class WatherServcies {
  final Dio dio;
   String baseUrl = 'http://api.weatherapi.com/v1';

  String apiKey = '3677bed892474b30b7a122242220806';

  WatherServcies(this.dio);


  Future<WeatherModel> getCurrntWather({required String cityName}) async {
    try {
      Response response = await dio.get(
        "$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7",
      );



      WeatherModel watherModal = WeatherModel.fromJson(response.data);
      return watherModal;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'] ??
          'Oops, there was an error. Try again later.';
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('Oops, there was an error. Try again later.');
    }
  }
}