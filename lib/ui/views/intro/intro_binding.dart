import 'package:get/get.dart';
import 'package:oberi_mobile/ui/views/intro/intro_controller.dart';

class IntroBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroController());
  }
}