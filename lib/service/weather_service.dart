//https://api.openweathermap.org/data/2.5/forecast?q=cairo&appid=156cd1ea62d18443035939ba603e1932
// https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=156cd1ea62d18443035939ba603e1932


import 'package:weather_app/utils/barell_file.dart';


class WeatherService{
  final String? city;
  WeatherService({this.city});

  String baseUrl='https://api.openweathermap.org/data/2.5';
  String apiKey = 'appid=156cd1ea62d18443035939ba603e1932';

  void getCurrentWeather({
    Function()? beforeSend,
    Function(Weather currentWeatherData)? onSuccess,
    Function(dynamic error)? onError,
  }){
    final url = "$baseUrl/weather?q=$city&$apiKey";
    ApiRepo(url: url,).getData(
      beforeSend:() => beforeSend,
      onSuccess:((data) => onSuccess!(Weather.fromJson(data))),
      onError: ((error) => onError!(error))
    );
  }

  void getForecast({
    Function()? beforeSend,
    Function(List<Forecast> forecast)? onSuccess,
    Function(dynamic error)? onError,
  }){
    final url = "$baseUrl/forecast?q=$city&$apiKey";
    ApiRepo(url: url,).getData(
      beforeSend:() => beforeSend,
      onSuccess:((data) => {
        onSuccess!((data['list'] as List)
        .map((f) => Forecast.fromJson(f))
        .toList() 
        // ??List.empty()
        )
      }),
      onError: ((error) => onError!(error))
    );
  }
}