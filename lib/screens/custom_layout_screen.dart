import 'package:assigmment_2/widgets/my_button.dart';
import 'package:assigmment_2/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomLayoutScreen extends StatefulWidget {
  const CustomLayoutScreen({super.key});

  @override
  State<CustomLayoutScreen> createState() => _CustomLayoutScreenState();
}

class _CustomLayoutScreenState extends State<CustomLayoutScreen> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Layout Screen')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextFormField(
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
              text: "Enter your name",
            ),
            SizedBox(height: 20),
            MyButton(onPressed: () {}, text: "Click Me"),
          ],
        ),
      ),
    );
  }
}
