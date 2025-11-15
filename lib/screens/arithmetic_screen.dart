import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreen();
}

class _ArithmeticScreen extends State<ArithmeticScreen> {
  int first = 0;
  int second = 0;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Arithmetic Operation',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: "Times New Roman",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                first = int.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter first number",
                hintText: "e.g 2",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                second = int.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter second number",
                hintText: "e.g 4",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = first + second;
                  });
                },
                child: Text("SUM"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = first - second;
                  });
                },
                child: Text("Subtract"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = first * second;
                  });
                },
                child: Text("MULTIPLICATION"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = first ~/ second;
                  });
                },
                child: Text("DIVISION"),
              ),
            ),
            SizedBox(height: 8),
            Text("Result : $result"),
          ],
        ),
      ),
    );
  }
}
