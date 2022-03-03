import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          height: 370,
          child: Card(
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
                  const FadeInImage(
                    width: double.infinity,
                    height: 170,
                    fit: BoxFit.cover,
                    placeholder: AssetImage('assets/images/loading.gif'),
                    image: NetworkImage(
                        'https://p4.wallpaperbetter.com/wallpaper/346/493/314/cats-cat-wallpaper-preview.jpg'),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: const Text(
                            'Gato montes',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Text(
                            'El gato doméstico​​, llamado más comúnmente gato, y de forma coloquial minino, ​ michino, ​ michi, ​ micho, ​ mizo, ​ miz, ​ morroño​ o morrongo, ​ y algunos nombres más, es un mamífero carnívoro de la familia Felidae. Es una subespecie domesticada por la convivencia con el ser humano')
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
