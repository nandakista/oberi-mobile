import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class MyLearningBootcampController extends GetxController {
  String tag = 'MyLearningBootcampController : ';

  late Map<String, dynamic> bootcampArgs;

  late List<Map<String, dynamic>> freeCourseData;
  late List<Map<String, dynamic>> silverCourseData;
  late List<Map<String, dynamic>> goldCourseData;
  late List<Map<String, dynamic>> platinumCourseData;

  RxBool isNotCompletedCourse = false.obs;
  RxBool isUploadStatus = false.obs;

  @override
  void onInit() {
    bootcampArgs = Get.arguments;
    isNotCompletedCourse.value = bootcampArgs['bootcamp_status'] == 'remedial';
    isUploadStatus.value = bootcampArgs['bootcamp_status'] == 'upload_task';
    setData();
    super.onInit();
  }

  void setData() {
    freeCourseData = (bootcampArgs['silabus'] as List)
        .where((e) => e['level'] == 'Free Course')
        .first['course'];

    silverCourseData = (bootcampArgs['silabus'] as List)
        .where((e) => e['level'] == 'Silver')
        .first['course'];

    goldCourseData = (bootcampArgs['silabus'] as List)
        .where((e) => e['level'] == 'Gold')
        .first['course'];
    platinumCourseData = (bootcampArgs['silabus'] as List)
        .where((e) => e['level'] == 'Platinum')
        .first['course'];
  }

  void onJoinZoom() async {
    String zoomUrl =
        'https://us04web.zoom.us/j/76804986365?pwd=IWO3vndG8bB12QhSRlADM6qdgO1zaj.1';
    Uri uri = Uri.parse(zoomUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
}
