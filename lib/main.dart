import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tasks'),
        ),
        body: ListView(
          children: [
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
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String name;

  Task(this.name, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.grey,
                        width: 100,
                      ),
                      Container(
                          width: 200,
                          child: Text(widget.name,
                              style: TextStyle(
                                  fontSize: 24,
                                  overflow: TextOverflow.ellipsis))),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            level++;
                          });
                          print(level);
                        },
                        child: Icon(Icons.arrow_drop_up),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: level / 10,
                        ),
                      ),
                      Text(
                        'Nível: $level',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
