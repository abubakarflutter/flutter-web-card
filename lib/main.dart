import 'package:flutter/material.dart';

import 'image_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              ImageCard(),
              SizedBox(
                height: 30,
              ),
              ImageCard(),
              // ImageCard(),
            ],
          ),
        ),
      ),
    );
  }
}
