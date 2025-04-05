class Task {
  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.amountOfHours,
    required this.price,
    required this.priority,
    required this.startDate,
    required this.finishDate,
  });

  final String? id;
  final String title;
  final String description;
  final int amountOfHours;
  final double price;
  final Priority priority;
  final DateTime startDate;
  final DateTime finishDate;
}

enum Priority {
  high('Высокий'),
  medium('Средний'),
  low('Низкий'),
  none('Без приоритета');

  const Priority(this.value);
  final String value;
}
