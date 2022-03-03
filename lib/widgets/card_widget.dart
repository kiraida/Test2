import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String urlImg;
  final String titulo;
  final String? descripcion;

  CardWidget({
    required this.titulo,
    this.descripcion = 'escriba la descripcion',
    required this.urlImg,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.transparent,
          )),
      elevation: 20,
      shadowColor: Colors.pink,
      child: Column(
        children: [
          FadeInImage(
            width: double.infinity,
            height: 170,
            fit: BoxFit.cover,
            placeholder: const AssetImage('assets/images/loading.gif'),
            image: NetworkImage(
              urlImg,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    titulo,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  descripcion!,
                ),
                const SizedBox(height: 20)
              ],
            ),
          )
        ],
      ),
    );
  }
}
