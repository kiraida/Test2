import 'package:contador/controllers/opacidad_imagen_controller.dart';
import 'package:contador/controllers/zoom_imagen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ZoomImagen2Page extends StatelessWidget {
  ZoomImagen2Page({Key? key}) : super(key: key);
  final zoomController = Get.find<ZoomImagenController>();
  final opacidadController = Get.find<OpacidadImagenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Zoom imagen/opacidad'),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.white,
              child: Center(child: GetBuilder<ZoomImagenController>(
                builder: (_) {
                  return Opacity(
                    opacity: zoomController.opa,
                    child: CircleAvatar(
                      radius: zoomController.radio,
                      backgroundImage: const NetworkImage(
                          "https://pbs.twimg.com/media/E3crPEkXEAE9umb.jpg"),
                      backgroundColor: Colors.black,
                    ),
                  );
                },
              )),
            ),
            Positioned(
                bottom: 50,
                right: 20,
                child: GetBuilder<ZoomImagenController>(builder: (_) {
                  return IconButton(
                    onPressed: () {
                      _.zoomMas();
                    },
                    icon: const Icon(
                      Icons.add,
                      size: 50,
                    ),
                  );
                })),
            Positioned(
              bottom: 0,
              right: 20,
              child: GetBuilder<ZoomImagenController>(builder: (_) {
                return IconButton(
                  onPressed: () {
                    _.zoomMenos();
                  },
                  icon: const Icon(
                    Icons.remove,
                    size: 50,
                  ),
                );
              }),
            ),
            Positioned(
              bottom: 100,
              right: 20,
              child: GetBuilder<ZoomImagenController>(builder: (_) {
                return IconButton(
                  onPressed: () {
                    _.opacidadMas();
                  },
                  icon: const Icon(
                    Icons.camera_alt,
                    size: 50,
                  ),
                );
              }),
            ),
            Positioned(
              bottom: 150,
              right: 20,
              child: GetBuilder<ZoomImagenController>(builder: (_) {
                return IconButton(
                  onPressed: () {
                    _.opacidadMenos();
                  },
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    size: 50,
                  ),
                );
              }),
            ),
          ],
        ));
  }
}
