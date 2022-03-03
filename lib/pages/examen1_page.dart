import 'package:flutter/material.dart';

class Examen1Pages extends StatelessWidget {
  const Examen1Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Examen de prueba 1'),
        ),
        body: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(140),
                          bottomRight: Radius.circular(140)),
                      gradient:
                          LinearGradient(colors: [Colors.pink, Colors.purple])),
                ),
                const CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.white,
                ),
                const Positioned(
                  top: 270,
                  child: CircleAvatar(
                    radius: 20,
                    child: Text(
                      'i',
                      style: TextStyle(fontSize: 28),
                    ),
                    backgroundColor: Colors.blueGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 90,
            ),
            const Text('Like', style: TextStyle(fontSize: 30)),
            const Icon(Icons.arrow_downward_rounded, size: 40)
          ],
        ));
  }
}
