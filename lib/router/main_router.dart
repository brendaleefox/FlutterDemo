import 'package:go_router/go_router.dart';
import 'package:flutter_routing_demo/presentation/screens/index.dart';

//En vez de importar todo esto, lo hacemos con el archivo index.dart
//import 'package:flutter_routing_demo/presentation/screens/home/home_screen.dart';
//import 'package:flutter_routing_demo/presentation/screens/about_screen.dart';
//import 'package:flutter_routing_demo/presentation/screens/settings_screen.dart';

final mainRouter = GoRouter(
  routes:[
    GoRoute(
      path:'/home',
      builder:(context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/about',
      builder:(context, state)=> const AboutScreen(),
    ),
    GoRoute(
      path: '/about',
      builder:(context, state)=> const SettingsScreen(),
    )
  ]
);

