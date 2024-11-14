import 'package:flutter/material.dart';
import 'package:flutter_routing_demo/presentation/screens/home/widgets/bicycle_content.dart';
import 'package:flutter_routing_demo/presentation/screens/home/widgets/car_content.dart';
import 'package:flutter_routing_demo/presentation/screens/home/widgets/train_content.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CarContent(),
            TrainContent(),
            BicycleContent(),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Hearder'),
              ),
              ListTile(
                title: const Text('About'),
                onTap: () {
                  context.push('/about');
                },
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  context.push('/settings');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}









//CODIGO CON BARRA DE NAVEGACION ABAJO
/*
Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CarContent(),
            TrainContent(),
            BicycleContent(),
          ],
        ),
        //BARRA DE NAVEGACION ABAJO
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_car),
              label: 'Car',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_transit),
              label: 'Train',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_bike),
              label: 'Bike',
            ),
          ],
        ),
      ),
    );
  }
}
*/