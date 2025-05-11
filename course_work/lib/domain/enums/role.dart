enum Role {
  administrator('Администратор'),
  employee('Сотрудник'),
  headOfDepartment('Заведующий кафедры');

  const Role(this.value);
  final String value;
}
