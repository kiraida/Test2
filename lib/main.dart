import 'package:contador/controllers/cambio_imagen_controller.dart';
import 'package:contador/controllers/contador_controller.dart';
import 'package:contador/controllers/menu2_controller.dart';
import 'package:contador/controllers/zoom_imagen_controller.dart';
import 'package:contador/pages/cambio_imagen_pages.dart';
import 'package:contador/pages/zoom_imagen_pages.dart';
import 'package:contador/pages/card_page.dart';
import 'package:contador/pages/contador_page.dart';
import 'package:contador/pages/container_pages.dart';
import 'package:contador/pages/examen1_page.dart';
import 'package:contador/pages/list_view_page.dart';
import 'package:contador/pages/menu2_pages.dart';
import 'package:contador/pages/menu_page.dart';
import 'package:contador/pages/stack_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() => ContadorController());
  Get.lazyPut(() => Menu2Controller());
  Get.lazyPut(() => CambioImagenController());
  Get.lazyPut(() => ZoomImagenController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Grupo IDGS10-1',
        initialRoute: '/zoom/imagen',
        routes: {
          '/menu': (context) => const MenuPage(),
          '/contador': (context) => ContadorPage(),
          '/container': (context) => const ContainerPages(),
          '/cartas': (context) => const CardPage(),
          '/stack': (context) => const StackPages(),
          '/listView': (context) => const ListViewPage(),
          '/examen1': (context) => const Examen1Pages(),
          '/menu2': (context) => const Menu2Pages(),
          '/cambio/imagen': (context) => const CambioImagenPages(),
          '/zoom/imagen': (context) => const ZoomImagenPages()
        });
  }
}
