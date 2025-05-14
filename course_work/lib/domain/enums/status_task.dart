enum Status {
  notIssued('Не выдана'),
  issued('Выдана'),
  started('Начата'),
  completed('Выполнена');
  const Status(this.value);
  final String value;
}
