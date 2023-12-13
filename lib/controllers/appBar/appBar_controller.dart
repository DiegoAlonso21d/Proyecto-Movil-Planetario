import 'package:get/get.dart';

class AppBarController extends GetxController {
  var currentContent = 0.obs;

  void changeContent(int index) {
    currentContent.value = index;
  }
}
