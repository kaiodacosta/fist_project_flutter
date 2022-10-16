import 'package:flutter/material.dart';

void main() {
  runApp(MyAppSecondChalleng());
}

class MyAppSecondChalleng extends StatelessWidget {
  const MyAppSecondChalleng({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter: Primeiros Passos'),
          titleTextStyle: const TextStyle(
            fontSize: 22,
          ),
        ),
        body: Column(
          children: const [
            SecondChallenge(
              first_color: Colors.white,
              second_color: Colors.pink,
              third_color: Colors.blue,
            ),
            SecondChallenge(
              first_color: Colors.pink,
              second_color: Colors.purple,
              third_color: Colors.blueAccent,
            ),
            SecondChallenge(
              first_color: Colors.pink,
              second_color: Colors.yellowAccent,
              third_color: Colors.blue,
            ),
            SecondChallenge(
              first_color: Colors.purple,
              second_color: Colors.white,
              third_color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
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

class SecondChallenge extends StatefulWidget {
  final Color first_color;
  final Color second_color;
  final Color third_color;

  const SecondChallenge(
      {Key? key,
      required this.first_color,
      required this.second_color,
      required this.third_color})
      : super(key: key);

  @override
  State<SecondChallenge> createState() => _SecondChallengeState();
}

class _SecondChallengeState extends State<SecondChallenge> {
  @override
  Widget build(BuildContext context) {
    const double height = 140;
    const double width = 100;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Container(
              color: widget.first_color,
              height: height,
              width: width,
            ),
            Container(
              color: widget.second_color,
              height: height,
              width: width,
            ),
            Container(
              color: widget.third_color,
              height: height,
              width: width,
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
