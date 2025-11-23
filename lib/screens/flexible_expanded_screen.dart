import 'package:assigmment_2/common/my_snackbar.dart';
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
              onTap: () =>
                  showMySnackBar(context: context, message: "I am Container 1"),
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
              onTap: () => showMySnackBar(
                context: context,
                message: "I am container 2",
                color: Colors.red,
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
