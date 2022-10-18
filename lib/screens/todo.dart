import 'package:flutter/material.dart';

import '../components/tasks.dart';

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
      ),
      body: ListView(
        children: const [
          Task('Aprender Flutter'),
          Task('Pagar boleto da energia no 5 dia útil do mês'),
          Task('Limpar casa'),
          Task('Limpar casa'),
          Task('Limpar casa'),
          Task('Limpar casa'),
          Task('Limpar casa'),
          Task('Limpar casa'),
          Task('Limpar casa'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
