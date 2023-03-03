//https://api.openweathermap.org/data/2.5/forecast?q=cairo&appid=156cd1ea62d18443035939ba603e1932
// https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=156cd1ea62d18443035939ba603e1932

//private constructor Images._()
import '../barell_file.dart';

var boxboredr = const BoxDecoration(
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(50),
    bottomRight: Radius.circular(50),
  ),
);

OutlineInputBorder oLIBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide:BorderSide(color: isLightTheme.value ? Colors.black : Colors.white),
    );

var inputDecor = InputDecoration(
  suffix: const Icon(
    Icons.search, //  color: itmClr,
  ),
  // hintStyle: TextStyle(color: isLightTheme.value? Colors.black:Colors.white),
  hintText: 'Search',
  border: oLIBorder(),
  focusedBorder: oLIBorder(),
  enabledBorder: oLIBorder(),
);