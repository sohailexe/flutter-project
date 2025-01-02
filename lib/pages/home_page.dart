import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/dialog_box.dart';
import 'package:flutter_application_1/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  List<List<dynamic>> toDoList = [
    ["Eat ", false],
    ["Sleep", false],
    ["reppet", false],
  ];

  void handleSave() {
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.pop(context);
  }

  void addNewTask() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return DialogBox(
            controller: _controller,
            onSave: handleSave,
            onCancel: () {
              Navigator.pop(context);
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Center(child: Text('TO DO by {Sohail Faiz}')),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: addNewTask,
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
                deleteFunction: (context) {
                  setState(() {
                    toDoList.removeAt(index);
                  });
                },
                taskName: toDoList[index][0],
                taskCompleted: toDoList[index][1],
                onChanged: (value) {
                  setState(() {
                    toDoList[index][1] = value;
                  });
                });
          },
        ));
  }
}
