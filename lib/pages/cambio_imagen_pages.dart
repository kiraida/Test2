import 'package:contador/controllers/cambio_imagen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CambioImagenPages extends StatelessWidget {
  const CambioImagenPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambio de imagen'),
      ),
      body: Center(
        child: GetBuilder<CambioImagenController>(builder: (_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  iconSize: 50,
                  splashColor: Colors.blue,
                  onPressed: () {
                    _.cambioImgRL(0);
                  },
                  icon: const Icon(Icons.arrow_left_sharp)),
              Container(
                padding: EdgeInsets.all(15.0),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: CircleAvatar(
                    radius: 200,
                    backgroundImage: NetworkImage(_.urlImg),
                  ),
                ),
              ),
              IconButton(
                  iconSize: 50,
                  splashColor: Colors.blue,
                  onPressed: () {
                    _.cambioImgRL(1);
                  },
                  icon: const Icon(Icons.arrow_right_sharp))
            ],
          );
        }),
      ),
    );
  }
}
