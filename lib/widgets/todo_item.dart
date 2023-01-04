import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_list/model/todo.dart';

class ToDoItems extends StatelessWidget {
  final ToDo todo;

  const ToDoItems({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leading: Icon(
          Icons.check_box,
          color: Colors.white,
        ),
        title: Text(todo.todoText!),
        trailing: IconButton(
            onPressed: () {
              print("Clicked button to delete");
            },
            icon: Icon(
              Icons.delete_outline,
              color: Colors.red,
            )),
        tileColor: Colors.black38,
      ),
    );
  }
}
