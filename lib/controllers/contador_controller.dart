import 'package:get/get.dart';

class ContadorController extends GetxController {
  var valor = 200.obs;

  void incrementar() => valor.value++;
}
