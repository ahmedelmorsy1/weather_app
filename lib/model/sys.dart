class Sys {
    Sys({
        required this.type,
        required this.id,
        required this.country,
        required this.sunrise,
        required this.sunset,
    });

    int type , sunrise , id , sunset;
    String country;

    factory Sys.fromJson(Map<String, dynamic> json) => Sys(
        type: json["type"],
        id: json["id"],
        country: json["country"],
        sunrise: json["sunrise"],
        sunset: json["sunset"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "country": country,
        "sunrise": sunrise,
        "sunset": sunset,
    };
}