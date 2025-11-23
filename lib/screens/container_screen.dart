import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Container(
          color: Colors.amberAccent,
          child: const Text('I am a Container'),
        ),
      ),
    );
  }
}
