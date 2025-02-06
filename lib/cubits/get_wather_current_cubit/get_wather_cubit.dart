import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wather_app2/cubits/get_wather_current_cubit/get_wather_states.dart';
import 'package:wather_app2/model/Wather_modal.dart';
import 'package:wather_app2/services/wather_services.dart';

class GetWatherCubit extends Cubit<WatherStates> {
  GetWatherCubit() :super(WeatherInitial());

  fetchWeather({required String cityName}) async{
    try {
  WeatherModel weatherModel = await WatherServcies(Dio())
        .getCurrntWather(cityName: cityName);
    emit(WatherLodeadState());  
}  catch (e) {
  emit(WatherFaileareState());
}
  }

}