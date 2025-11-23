import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flexible Expanded Screen',
          style: TextStyle(color: Colors.pinkAccent),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.green,
                  width: 120,
                  content: Text('I am Container 1'),
                  duration: Duration(seconds: 2),
                  behavior: SnackBarBehavior.floating,
                ),
              ),
              child: Container(
                color: Colors.greenAccent,
                alignment: Alignment.center,
                child: Text('Container 1'),
                width: double.infinity,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.redAccent,
                  content: Text('I am Container 2'),
                  width: 125,
                  duration: Duration(seconds: 2),
                  behavior: SnackBarBehavior.floating,
                ),
              ),
              child: Container(
                color: Colors.amberAccent,
                alignment: Alignment.center,
                child: Text('Container 2'),
                width: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
