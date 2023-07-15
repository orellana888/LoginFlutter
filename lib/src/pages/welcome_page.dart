import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido'),
      ),
      body: const Center(
        child: Text(
          'BIENVENIDO',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
