import '../barell_file.dart';
class HomeBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(city: 'cairo'));
  }
}