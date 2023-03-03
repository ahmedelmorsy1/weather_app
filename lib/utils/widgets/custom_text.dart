import 'package:weather_app/utils/barell_file.dart';

 class CustomText extends StatelessWidget {
  
  final String? text;
  final double? fSize;
  // final FontWeight? fWeight;
  const CustomText({Key? key, this.text,this.fSize = 14, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle? theme1 = Theme.of(context).textTheme.caption;
    return Text(text!,style: theme1!.copyWith(fontSize: fSize,// fontWeight: fWeight,
          ),);}}
