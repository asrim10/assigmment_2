import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  double principal = 0;
  double rate = 0;
  double time = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Simple Interest",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: "Times New Roman",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                principal = double.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(
                labelText: "Enter Principal",
                hintText: "10000",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                rate = double.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(
                labelText: "Enter Interest Rate",
                hintText: "1.5",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                time = double.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(
                labelText: "Enter Time",
                hintText: "2",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = principal * rate * time / 100;
                  });
                },
                child: Text("Simple Interest"),
              ),
            ),
            SizedBox(height: 10),
            Text("Total interest : $result "),
          ],
        ),
      ),
    );
  }
}
