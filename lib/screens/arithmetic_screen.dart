import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreen();
}

class _ArithmeticScreen extends State<ArithmeticScreen> {
  // int first = 0;
  // int second = 0;

  //Controller
  final TextEditingController firstController = TextEditingController(
    text: "1",
  );
  final TextEditingController secondController = TextEditingController(
    text: "1",
  );
  int result = 0;

  //Global Key for form state
  final _formKey = GlobalKey<FormState>();

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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: firstController,
                decoration: InputDecoration(
                  labelText: "Enter first number",
                  hintText: "e.g 2",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter first no";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: secondController,
                decoration: InputDecoration(
                  labelText: "Enter second number",
                  hintText: "e.g 4",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter second no";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        int first = int.parse(firstController.text);
                        int second = int.parse(secondController.text);
                        result = first + second;
                      });
                    }
                  },
                  child: Text("SUM"),
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        int first = int.parse(firstController.text);
                        int second = int.parse(secondController.text);
                        result = first - second;
                      });
                    }
                  },
                  child: Text("Subtract"),
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        int first = int.parse(firstController.text);
                        int second = int.parse(secondController.text);
                        result = first * second;
                      });
                    }
                  },
                  child: Text("MULTIPLICATION"),
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        int first = int.parse(firstController.text);
                        int second = int.parse(secondController.text);
                        result = first ~/ second;
                      });
                    }
                  },
                  child: Text("DIVISION"),
                ),
              ),
              SizedBox(height: 8),
              Text("Result : $result"),
            ],
          ),
        ),
      ),
    );
  }
}
