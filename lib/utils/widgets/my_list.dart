import '../barell_file.dart';

class MyList extends GetView<HomeController> {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Stack(children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: const EdgeInsets.only(top: 120),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(text:'other cities',fSize: 16,),
                    SizedBox(
                      height: 150,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const VerticalDivider(
                          // color: Colors.transparent,
                          // color: itmClr,
                          width: 5,
                        ),
                        itemCount: controller.currentWeatherlist.length,
                        itemBuilder: (context, index) {
                          Weather? data;
                          (controller.currentWeatherlist.isNotEmpty)
                              ? data = controller.currentWeatherlist[index]
                              : data = null;
                          return SizedBox(
                            width: 140,
                            height: 150,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  CustomText(
                                      text:
                                          (data != null) ? '${data.name}' : '',
                                      fSize: 18),
                                  CustomText(
                                    text: (data != null)
                                        ? '${(data.main!.temp - 273.15).round().toString()}\u2103'
                                        : '',
                                    fSize: 18,
                                  ),
                                  // SizedBox(//   width: 50,height: 50,//   child: LottieBuilder.asset(Images.cloudyAnim), ),
                                  CustomText(
                                    text: (data != null)
                                        ? data.weather![0].description
                                        : '',
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}
