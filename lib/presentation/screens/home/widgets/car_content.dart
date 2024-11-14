import 'package:flutter/material.dart';

class CarContent extends StatelessWidget {
  const CarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.directions_car),
        SizedBox(height: 10),
        Text('Car Content'),
        SizedBox(height: 10),
        Text('This is the car content'),
      ],
    ));
  }
}
