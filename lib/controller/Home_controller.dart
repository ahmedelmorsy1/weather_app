// ignore_for_file: avoid_print, file_names

import '../utils/barell_file.dart';

class HomeController extends GetxController{
  
  String? city;
  Weather currentWeatherData = Weather();
  List<Weather> currentWeatherlist = [] ;
  List<Forecast> forecast = [] ;

  HomeController({this.city});

  @override
  void onInit() {
    initState();
    getTopCities();
    super.onInit();
  }

  void updateWeather(){
    initState();
  }
  
  void initState() {
    getCurrentWeatherData();
    getFiveDaysData();
  }
  
  void getCurrentWeatherData() {
    WeatherService(city:city).getCurrentWeather(
      onSuccess: (data){
        currentWeatherData = data;
        update();
      },
      onError: ((error) {
        print(error);
        update();
      }),
    );
  }
  
  void getFiveDaysData() {
    WeatherService(city:city).getForecast(
      onSuccess: (data){
        forecast = data;
        update();
      },
      onError: ((error) {
        print(error);
        update();
      }),
    );
  }

  void getTopCities() {
    List<String> cities = ['cairo','alexandria','hurghada','luxor','aswan','damanhor'];
    for (var element in cities) {
      WeatherService(city:element).getCurrentWeather(
      onSuccess: (data){
        currentWeatherlist.add(data);
        update();
      },
      onError: ((error) {
        print(error);
        update();
      }),
    );
    }
  }
}