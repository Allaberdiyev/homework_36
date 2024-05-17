import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<TodoItem> todoItems = [
    TodoItem(title: 'Answer 1', isCompleted: false),
    TodoItem(title: 'Answer 2', isCompleted: false),
    TodoItem(title: 'Answer 3', isCompleted: false),
  ];

  void toggleTodoStatus(int index) {
    setState(() {
      todoItems[index].isCompleted = !todoItems[index].isCompleted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 162, 162, 162),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 95, 164, 243),
        title: Text(
          'Todo List',
          style: TextStyle(color: Color.fromARGB(255, 23, 0, 194)),
        ),
      ),
      body: ListView.builder(
        itemCount: todoItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todoItems[index].title),
            trailing: Checkbox(
              value: todoItems[index].isCompleted,
              onChanged: (value) {
                toggleTodoStatus(index);
              },
            ),
          );
        },
      ),
    );
  }
}

class TodoItem {
  String title;
  bool isCompleted;

  TodoItem({required this.title, required this.isCompleted});
}
