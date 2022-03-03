import 'package:contador/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Seccion de listView'),
      ),
      body: ListView(
        children: [
          CardWidget(
            urlImg:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFrVBLTBd0Fzptn9zNftbMsLwRhUxZ4xxZRA&usqp=CAU',
            titulo: 'But boni',
            descripcion: 'conejo bueno de la caricatura',
          ),
          CardWidget(
              titulo: 'ojo marron',
              descripcion: 'Es un ojo marron etc.....',
              urlImg:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvmSt7Abg9VMWVJWVGB0Fm7EgXvEJj5wr1dw&usqp=CAU'),
          CardWidget(
              titulo: 'Caricatura',
              urlImg:
                  'http://s3.amazonaws.com/videos_mxm/caretas/dibujar-caricaturas-caras-tutorial-flash-hd_31388_1_6025.jpg')
        ],
      ),
    );
  }
}
