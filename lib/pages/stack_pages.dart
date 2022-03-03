import 'package:flutter/material.dart';

class StackPages extends StatelessWidget {
  const StackPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Seccion de stack'),
        leading: const Icon(Icons.menu),
        actions: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://dam.esquirelat.com/wp-content/uploads/2020/07/STANLEE.jpg'),
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.network(
            'https://c.tenor.com/5DhO4mmK2YMAAAAC/cine-pel%C3%ADcula.gif',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          const Positioned(
            bottom: 0,
            right: 10,
            child: Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 60,
            ),
          )
        ],
      ),
    );
  }
}
