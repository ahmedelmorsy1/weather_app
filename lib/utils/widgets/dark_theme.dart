import '../barell_file.dart';

RxBool isLightTheme = false.obs;
// var txtClr,itmClr,bckGrdClr;

final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    primarySwatch:Colors.yellow,
    textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
      headline2: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
      caption: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),
    ).apply(
      bodyColor: Colors.black54,
      displayColor: Colors.white,
    ),
    
    iconTheme: const IconThemeData(color: Colors.white),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.white,
      disabledColor: Colors.grey,
    ));

var lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    // primarySwatch:Colors.lime,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary:  Colors.white,
      secondary: Colors.green,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
      headline2: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
      caption: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.bold),
    ).apply(
      bodyColor: Colors.white,
      displayColor: Colors.black54, ),
      iconTheme: const IconThemeData(color: Colors.black),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.white,
      disabledColor: Colors.grey,
    ));

Widget dark() {
  return SizedBox(
    height: 60,
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text('${isLightTheme.value ? 'Dark' : 'Light'} theme',),),
          ObxValue(
            (data) => Switch(
              value: isLightTheme.value,
              onChanged: (val) {
                isLightTheme.value = val;
                Get.changeThemeMode(isLightTheme.value ? ThemeMode.light : ThemeMode.dark,);
                // isLightTheme.value
                //     ? [//txtClr = Colors.black,bckGrdClr = Colors.white,itmClr = Colors.white]
                //: [txtClr = Colors.white,txtClr = Colors.black,itmClr = Colors.black];
                saveThemeStatus();
              },
            ),
            false.obs,
          ),
        ],
      ),
    ),
  );
}

Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
saveThemeStatus() async {
  SharedPreferences pref = await _prefs;
  pref.setBool('theme', isLightTheme.value);
}

// getThemeStatus() async {
//   var isLight = _prefs.then((SharedPreferences prefs) {
//     return prefs.getBool('theme') ?? true;  }).obs;
//   isLightTheme.value = (await isLight.value);
//   Get.changeThemeMode(isLightTheme.value ? ThemeMode.light : ThemeMode.dark); }