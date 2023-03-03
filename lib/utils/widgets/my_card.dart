
import 'package:intl/intl.dart';
import 'package:weather_app/utils/barell_file.dart';

class MyCard extends GetView<HomeController> {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
                    flex: 1,
                    child: Container(
                      decoration: boxboredr,
                      child: Stack(
                        children: <Widget>[
                          AppBar(
                            actions: [dark(),],// backgroundColor: Colors.transparent,// backgroundColor: bckGrdClr,
                            elevation: 0,
                            // leading: IconButton(icon: const Icon(Icons.menu,//   ),onPressed: () {},),
                          ),
                          Container(
                            padding:const EdgeInsets.only(top: 100, left: 20, right: 20),
                            child: TextField(
                              onChanged: (value) => controller.city = value,// style:  TextStyle(//   color: txtClr,// ),
                              textInputAction: TextInputAction.search,
                              onSubmitted: (value) => controller.updateWeather(),
                              decoration: inputDecor
                            ),
                          ),
                          Align(
                            alignment: const Alignment(0.0, 1.0),
                            child: SizedBox(height: 10,width: 10,
                              child: OverflowBox(
                                minWidth: 0.0,maxWidth: MediaQuery.of(context).size.width,
                                minHeight: 0.0,maxHeight: (MediaQuery.of(context).size.height / 4),
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      padding:const EdgeInsets.symmetric(horizontal: 15),
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height,
                                      child: Card(// color: bckGrdClr,
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:CrossAxisAlignment.center,
                                          children: <Widget>[
                                            
                                            Container(
                                              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                                              child: Column(
                                                crossAxisAlignment:CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Center(
                                                    child:CustomText(
                                                      text:'${controller.currentWeatherData.name},',
                                                      fSize: 24,)
                                                  ),
                                                  Center(
                                                    child: CustomText(text:DateFormat()
                                                    .add_MMMMEEEEd().format(DateTime.now()),
                                                    fSize: 16,),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Divider(),
                                            Row(
                                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  padding:const EdgeInsets.only(left: 50),
                                                  child: Column(
                                                    children: <Widget>[
                                                      CustomText(text:controller.currentWeatherData.weather![0].description,fSize: 22,),
                                                      const SizedBox(height: 5),
                                                      Text(
                                                        '${(controller.currentWeatherData.main!.temp - 273.15).round().toString()}\u2103',
                                                        style: Theme.of(context).textTheme.headline2!),
                                                      CustomText(text:'min: ${(controller.currentWeatherData.main!.tempMin - 273.15).round().toString()}\u2103 / max: ${(controller.currentWeatherData.main!.tempMax - 273.15).round().toString()}\u2103',)
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  padding: const EdgeInsets.only(right: 20),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    children: <Widget>[// SizedBox(width: 120,height: 120,// child: LottieBuilder.asset(Images.cloudyAnim),),
                                                      CustomText(text:'wind ${controller.currentWeatherData.wind!.speed} m/s',),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  ;
  }
}