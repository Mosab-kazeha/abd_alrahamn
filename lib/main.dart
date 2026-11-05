import 'package:api_project/model/todo_model.dart';
import 'package:api_project/service/todo_service.dart';
import 'package:flutter/material.dart';

late List<TodoModel> todos = [];

void main() async {
  TodoService service = TodoService();
  //  service.getOneTodo();
  // todos = await service.getAllTodos();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const new({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            TodoService service = TodoService();
            todos = await service.getAllTodos();
            setState(() {});
          },
        ),
        body: todos.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: todos!.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 200,
                    height: 50,
                    margin: EdgeInsets.all(5),
                    color: Colors.teal,
                    alignment: Alignment.center,
                    child: Text(
                      todos![index].title,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
