import 'package:contador/controllers/zoom_imagen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ZoomImagenPages extends StatelessWidget {
  const ZoomImagenPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zoom Imagen'),
      ),
      body: Center(child: GetBuilder<ZoomImagenController>(builder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: FittedBox(
                child: CircleAvatar(
                    radius: _.radio,
                    backgroundImage: NetworkImage(
                        'https://pbs.twimg.com/media/E1inLQFWEAQbK34.jpg')),
              ),
            ),
            InkWell(
                child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: new Container(
                    child: CircleAvatar(
                      radius: 20,
                      child: IconButton(
                        iconSize: 20,
                        onPressed: () {
                          _.zoomMas();
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ),
                  )),
            )),
            InkWell(
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: new Container(
                      child: CircleAvatar(
                        radius: 20,
                        child: IconButton(
                          iconSize: 20,
                          onPressed: () {
                            _.zoomMenos();
                          },
                          icon: const Icon(Icons.remove),
                        ),
                      ),
                    ),
                  )),
            )
          ],
        );
      })),
    );
  }
}
