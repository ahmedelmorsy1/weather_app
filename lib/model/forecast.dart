class Forecast {
  final String dateTime;
  final int temp;

  Forecast({required this.dateTime, required this.temp});

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      Forecast(dateTime: json['dateTime'], temp: int.parse(json['temp']));

  Map<String, dynamic> toJson() =>
      {"dateTime": dateTime, "temp": temp};
}