import 'package:flutter/material.dart';

class PalindromeScreen extends StatefulWidget {
  const PalindromeScreen({super.key});

  @override
  State<PalindromeScreen> createState() => _PalindromeScreenState();
}

class _PalindromeScreenState extends State<PalindromeScreen> {
  int num = 0;
  String result = "";

  bool isPalindrome(int num) {
    int original = num;
    int rev = 0;

    while (num > 0) {
      rev = rev * 10 + num % 10;
      num ~/= 10;
    }
    return original == rev;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Palindrome Number",
          style: TextStyle(
            color: Colors.greenAccent,
            fontSize: 20,
            fontFamily: "Times New Roman",
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                num = int.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter a number",
                hintText: "5005",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (isPalindrome(num)) {
                      result = "$num is a Palindrome number";
                    } else {
                      result = "$num is not a Palindrome number";
                    }
                  });
                },
                child: Text("Is Palindrome?"),
              ),
            ),
            SizedBox(height: 10),
            Text(
              result,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
