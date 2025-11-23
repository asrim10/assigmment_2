import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/image1.jpg'),
              Image.asset('assets/images/image1.jpg'),
              Image.network(
                'https://c.files.bbci.co.uk/5c38/live/16192430-f5ef-11ef-bd6e-cd71c2e1454a.jpg',
              ),
              Image.network(
                'https://c.files.bbci.co.uk/5c38/live/16192430-f5ef-11ef-bd6e-cd71c2e1454a.jpg',
              ),
              Image.network(
                'https://editorial.uefa.com/resources/01e4-0e74487215d7-f3108f934243-1000/lionel_messi_scored_four_times_for_barcelona.jpeg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
