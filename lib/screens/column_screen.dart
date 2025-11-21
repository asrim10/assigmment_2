import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column Screen")),
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {}, child: const Text("Button 1")),
            ElevatedButton(onPressed: () {}, child: const Text("Button 2")),
            OutlinedButton(onPressed: () {}, child: const Text("Button 3")),
          ],
        ),

        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: const [
        //     Column(
        //       children: [
        //         Icon(Icons.star, size: 50, color: Colors.red),
        //         Icon(Icons.star, size: 50, color: Colors.red),
        //       ],
        //     ),
        //     Column(
        //       children: [
        //         Icon(Icons.star, size: 50),
        //         Icon(Icons.star, size: 50),
        //         Icon(Icons.star, size: 50),
        //       ],
        //     ),
        //     Column(
        //       children: [
        //         Icon(Icons.star, size: 50),
        //         Icon(Icons.star, size: 50),
        //       ],
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
