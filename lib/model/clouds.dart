class Clouds {
    Clouds({required this.all,});
    int all;

    factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(all: json["all"],);
    // factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(all: int.parse(json["all"]),);

    Map<String, dynamic> toJson() => {"all": all,};
    //Map<String, dynamic> toJson() => {"all": this.all,};
}