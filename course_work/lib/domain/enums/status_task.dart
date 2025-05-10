enum Priority {
  busy('Занят'),
  free('Свободен'),
  low('Низкий'),
  none('Без приоритета');

  const Priority(this.value);
  final String value;
}
