import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String name;

  const Task(this.name, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                    SizedBox(
                        width: 200,
                        child: Text(widget.name,
                            style: const TextStyle(
                                fontSize: 24,
                                overflow: TextOverflow.ellipsis))),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          level++;
                        });
                        // print(level);
                      },
                      child: const Icon(Icons.arrow_drop_up),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 200,
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: level / 10,
                      ),
                    ),
                    Text(
                      'Nível: $level',
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
