class TaskModel {
  final int id;
  final String title;
  final DateTime date;
  bool isComplete;

  TaskModel({
    required this.id,
    required this.title,
    DateTime? date,
    this.isComplete = false,
  }) : date = date ?? DateTime.now();
}
