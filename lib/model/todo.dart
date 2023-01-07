class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning Walk', isDone: true),
      ToDo(id: '01', todoText: 'Team Meeting', isDone: false),
      ToDo(id: '01', todoText: 'Buy Grocery', isDone: true),
      ToDo(id: '01', todoText: 'Planning about new app', isDone: false),
      ToDo(id: '01', todoText: 'Dinner with friends', isDone: true),
      ToDo(id: '01', todoText: 'weekend shopping with family', isDone: false),
    ];
  }
}
