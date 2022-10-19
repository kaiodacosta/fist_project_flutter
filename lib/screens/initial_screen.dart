import 'package:flutter/material.dart';
import 'package:todo/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
      ),
      body: AnimatedOpacity(
        opacity: (opacity) ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
                'Aprender Flutter',
                'assets/images/aprender-flutter.png',
                3),
            Task(
                'Andar de Bike',
                'assets/images/andar-de-bike.jpg',
                4),
            Task(
                'Meditar',
                'assets/images/meditar.jpeg',
                5),
            Task(
                'Ler',
                'assets/images/ler.webp',
                5),
            Task(
                'Jogar bola',
                'assets/images/jogar-bola.jpg',
                1),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacity = !opacity;
          });
        },
        child: Icon(
            opacity ? Icons.remove_red_eye_outlined : Icons.remove_red_eye),
      ),
    );
  }
}
