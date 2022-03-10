import 'package:get/get_state_manager/get_state_manager.dart';

class OpacidadImagenController extends GetxController {
  double opa = 1;

  void opacidadMenos() {
    opa -= 0.1;
    update();
  }

  void opacidadMas() {
    opa += 0.1;
    update();
  }
}
