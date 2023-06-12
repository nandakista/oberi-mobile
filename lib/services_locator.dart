import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ServicesLocator {
  static Future<void> init() async {
    await Get.putAsync(() async => await SharedPreferences.getInstance());
  }
}