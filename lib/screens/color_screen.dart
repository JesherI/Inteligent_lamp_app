import 'package:app/screens/alarm_screen.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/on_screen.dart';
import 'package:app/screens/time_screen.dart';
import 'package:app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  int indexNavigation = 0;

  openScreen(int index, BuildContext context) {
    MaterialPageRoute ruta =
        MaterialPageRoute(builder: (context) => const HomeScreen());
    switch (index) {
      case 0:
        ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
        break;
      case 1:
        ruta = MaterialPageRoute(builder: (context) => const OnScreen());
        break;
      case 2:
        ruta = MaterialPageRoute(builder: (context) => const TimeScreen());
        break;
      case 3:
        ruta = MaterialPageRoute(builder: (context) => const ColorScreen());
        break;
      case 4:
        ruta = MaterialPageRoute(builder: (context) => const AlarmScreen());
        break;
    }
    setState(() {
      indexNavigation = index;
      Navigator.push(context, ruta);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color'),
        backgroundColor: AppTheme.backColor,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNavigation,
        backgroundColor: AppTheme.backColor,
        unselectedItemColor: const Color.fromARGB(237, 25, 40, 48),
        selectedItemColor: Colors.black,
        onTap: (index) => openScreen(index, context),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens),
            label: 'Imagenes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Salir',
          ),
        ],
      ),
    );
  }
}