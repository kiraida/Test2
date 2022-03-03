import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Menu de opciones'),
        ),
        body: ListView(
          children: [
            ListTile(
              onTap: () => Navigator.pushNamed(context, '/contador'),
              title: const Text('Contador'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.pink,
              ),
              leading: const Icon(
                Icons.calculate,
                color: Colors.pink,
              ),
            ),
            const Divider(),
            ListTile(
              onTap: () => Navigator.pushNamed(context, '/container'),
              title: const Text('Contenedores'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.pink,
              ),
              leading: const Icon(
                Icons.inventory,
                color: Colors.pink,
              ),
            ),
            const Divider(),
            ListTile(
              onTap: () => Navigator.pushNamed(context, '/container'),
              title: const Text('Cartas'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.pink,
              ),
              leading: const Icon(
                Icons.photo_size_select_actual_rounded,
                color: Colors.pink,
              ),
            ),
          ],
        ));
  }
}
