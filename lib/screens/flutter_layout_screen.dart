import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatelessWidget {
  const FlutterLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Layout Screen",
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 90,
          padding: EdgeInsets.all(20),
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [Icon(Icons.call), Text("call")]),
              Spacer(),
              Column(children: [Icon(Icons.route), Text("Route")]),
              Spacer(),
              Column(children: [Icon(Icons.share), Text("icon")]),
            ],
          ),
        ),
      ),
    );
  }
}
