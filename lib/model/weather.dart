// To parse this JSON data, do
//
//     final weather = weatherFromJson(jsonString);

import 'package:weather_app/utils/barell_file.dart';

Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));
String weatherToJson(Weather data) => json.encode(data.toJson());

class Weather {
  Coord? coord;
    List<WeatherElement>? weather;
    String? base , name;
    MainWeather? main;
    int? visibility ,dt , timezone, id, cod ;
    Wind? wind;
    Clouds? clouds;
    Sys? sys;
    //i will add forecast

    Weather({
         this.coord,
         this.weather,
         this.base,
         this.main,
         this.visibility,
         this.wind,
         this.clouds,
         this.dt,
         this.sys,
         this.timezone,
         this.id,
         this.name,
         this.cod,
    });


    factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        coord: Coord.fromJson(json["coord"]),
        weather: List<WeatherElement>.from(json["weather"].map((x) => WeatherElement.fromJson(x))),
        base: json["base"],
        main: MainWeather.fromJson(json["main"]),
        visibility: json["visibility"],
        wind: Wind.fromJson(json["wind"]),
        clouds: Clouds.fromJson(json["clouds"]),
        dt: json["dt"],
        sys: Sys.fromJson(json["sys"]),
        timezone: json["timezone"],
        id: json["id"],
        name: json["name"],
        cod: json["cod"],
    );

    Map<String, dynamic> toJson() => {
        "coord": coord!.toJson(),
        "weather": List<dynamic>.from(weather!.map((x) => x.toJson())),
        "base": base,
        "main": main!.toJson(),
        "visibility": visibility,
        "wind": wind!.toJson(),
        "clouds": clouds!.toJson(),
        "dt": dt,
        "sys": sys!.toJson(),
        "timezone": timezone,
        "id": id,
        "name": name,
        "cod": cod,
    };
}