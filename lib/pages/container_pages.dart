import 'package:flutter/material.dart';

class ContainerPages extends StatelessWidget {
  const ContainerPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Seccion de contedores'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    'https://c4.wallpaperflare.com/wallpaper/911/492/963/arbol-naturaleza-paisajes-prado-wallpaper-preview.jpg'),
                fit: BoxFit.cover,
              ),
              boxShadow: const [
                BoxShadow(blurRadius: 15, color: Colors.green),
              ],
              gradient: const LinearGradient(colors: [
                Colors.green,
                Colors.blue,
              ]),
              borderRadius: BorderRadius.circular(20),
            ),
            width: 290,
            height: 160,
          ),
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              boxShadow: const [BoxShadow(color: Colors.blue, blurRadius: 15)],
              color: Colors.blue,
              borderRadius: BorderRadius.circular(90),
            ),
          ),
          Container(
            child: Center(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(color: Colors.blue, blurRadius: 15)
                  ],
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(90),
                ),
              ),
            ),
            width: 120,
            height: 120,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Colors.pink,
              boxShadow: [
                BoxShadow(
                  color: Colors.pink,
                  blurRadius: 15,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
