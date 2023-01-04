import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_list/widgets/todo_item.dart';

import '../model/todo.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final todosList = ToDo.todoList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildappBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 50,
                      bottom: 20,
                    ),
                    child: Text(
                      "All ToDo's",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  for (ToDo todo in todosList)
                    ToDoItems(
                      todo: todo,
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 122, 122, 122),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black38,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 25),
            border: InputBorder.none,
            hintText: "Search"),
      ),
    );
  }

  AppBar _buildappBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 122, 122, 122),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                  "https://i.pinimg.com/474x/f1/7b/22/f17b2266af62722d15ef339822e94afe.jpg"),
            ),
          )
        ],
      ),
    );
  }
}
