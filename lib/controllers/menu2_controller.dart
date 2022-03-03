import 'package:get/get.dart';

class Menu2Controller extends GetxController {
  int index = 1;

  void modificarIndex(int currentIndex) {
    index = currentIndex;
    update();
  }
}
