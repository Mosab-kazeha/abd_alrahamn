import 'package:api_project/model/todo_model.dart';
import 'package:dio/dio.dart';

class TodoService {
  String temp = """{"id":id}""";

  Map temp2 = {
    "userId": 10000000,
    "id": 1222222222222,
    "title": "delectus appppppppppput autem",
    "completed": false,
  };

  Dio dio = Dio();
  late Response response;

  Future<TodoModel> getOneTodo() async {
    try {
      response = await dio.get("http://jsonplaceholder.typicode.com/todos/5");
      print("the response is  $response");

      TodoModel result = TodoModel.fromMap(response.data);
      print("the response.data is  ${response.data}");
      print("the response.statusCode is  ${response.statusCode}");
      print("the response.headers------ is  ${response.headers}");
      print("the response.extra is  ${response.extra}");
      print("the response.statusMessage is  ${response.statusMessage}");

      print("the local temp is  ${temp}");
      print("the local temp2 is  ${temp2}");
      return result;
    } catch (e) {
      return TodoModel(userId: 5, id: 5, title: "title", completed: false);
    }
  }

  Future<List<TodoModel>> getAllTodos() async {
    try {
      response = await dio.get("https://jsonplaceholder.typicode.com/todos");
      print(response.data);

      List<TodoModel> todos = List.generate(response.data.length, (index) {
        //? the return is to add the model we have in the index now to the list todos 
        //! for index 0 the list is [the first model]
        return 

        //? the fromMap is for Make the response in the index to model
        //! make the map to be model
        TodoModel.fromMap(response.data[index]);
      });

      return todos;
    } catch (e) {
      return [];
    }
  }
}
