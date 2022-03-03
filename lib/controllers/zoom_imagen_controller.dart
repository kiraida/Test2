import 'package:get/get.dart';

class ZoomImagenController extends GetxController {
  double radio = 150;
  void zoomMas() {
    radio += 20;
    update();
  }

  void zoomMenos() {
    radio -= 20;
    update();
  }
}
