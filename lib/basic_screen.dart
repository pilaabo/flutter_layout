import 'package:flutter/material.dart';
import 'package:flutter_layout/text_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: const Center(
            child: Text(
              'Drawer',
              style: TextStyle(color: Colors.white, fontSize: 50),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Welcome to Flutter',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/beach.jpg'),
          const TextLayout(),
        ],
      ),
    );
  }
}
