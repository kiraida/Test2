import 'package:get/get_state_manager/get_state_manager.dart';

class ZoomImagenController extends GetxController {
  double radio = 150;
  double opa = 1;

  void opacidadMenos() {
    opa -= 0.1;
    update();
  }

  void opacidadMas() {
    opa += 0.1;
    update();
  }

  void zoomMas() {
    radio += 20;
    update();
  }

  void zoomMenos() {
    radio -= 20;
    update();
  }
}
