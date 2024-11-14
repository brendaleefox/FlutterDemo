import 'package:flutter/material.dart';
import 'package:flutter_routing_demo/presentation/screens/home/home_screen.dart';

main()=> runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
