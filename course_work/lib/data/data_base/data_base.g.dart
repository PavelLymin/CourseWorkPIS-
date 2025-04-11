// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_base.dart';

// ignore_for_file: type=lint
class $TasksTable extends Tasks with TableInfo<$TasksTable, Task> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TasksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _amountOfHoursMeta =
      const VerificationMeta('amountOfHours');
  @override
  late final GeneratedColumn<int> amountOfHours = GeneratedColumn<int>(
      'amount_of_hours', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _paymentMeta =
      const VerificationMeta('payment');
  @override
  late final GeneratedColumn<double> payment = GeneratedColumn<double>(
      'payment', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<PgDate> date = GeneratedColumn<PgDate>(
      'date', aliasedName, false,
      type: PgTypes.date, requiredDuringInsert: true);
  static const VerificationMeta _startTimeMeta =
      const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<PgDateTime> startTime =
      GeneratedColumn<PgDateTime>('start_time', aliasedName, false,
          type: PgTypes.timestampNoTimezone, requiredDuringInsert: true);
  static const VerificationMeta _finishTimeMeta =
      const VerificationMeta('finishTime');
  @override
  late final GeneratedColumn<PgDateTime> finishTime =
      GeneratedColumn<PgDateTime>('finish_time', aliasedName, false,
          type: PgTypes.timestampNoTimezone, requiredDuringInsert: true);
  static const VerificationMeta _priorityMeta =
      const VerificationMeta('priority');
  @override
  late final GeneratedColumn<String> priority = GeneratedColumn<String>(
      'priority', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        description,
        amountOfHours,
        payment,
        date,
        startTime,
        finishTime,
        priority
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tasks';
  @override
  VerificationContext validateIntegrity(Insertable<Task> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('amount_of_hours')) {
      context.handle(
          _amountOfHoursMeta,
          amountOfHours.isAcceptableOrUnknown(
              data['amount_of_hours']!, _amountOfHoursMeta));
    } else if (isInserting) {
      context.missing(_amountOfHoursMeta);
    }
    if (data.containsKey('payment')) {
      context.handle(_paymentMeta,
          payment.isAcceptableOrUnknown(data['payment']!, _paymentMeta));
    } else if (isInserting) {
      context.missing(_paymentMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    } else if (isInserting) {
      context.missing(_startTimeMeta);
    }
    if (data.containsKey('finish_time')) {
      context.handle(
          _finishTimeMeta,
          finishTime.isAcceptableOrUnknown(
              data['finish_time']!, _finishTimeMeta));
    } else if (isInserting) {
      context.missing(_finishTimeMeta);
    }
    if (data.containsKey('priority')) {
      context.handle(_priorityMeta,
          priority.isAcceptableOrUnknown(data['priority']!, _priorityMeta));
    } else if (isInserting) {
      context.missing(_priorityMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Task map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Task(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      amountOfHours: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}amount_of_hours'])!,
      payment: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}payment'])!,
      date: attachedDatabase.typeMapping
          .read(PgTypes.date, data['${effectivePrefix}date'])!,
      startTime: attachedDatabase.typeMapping.read(
          PgTypes.timestampNoTimezone, data['${effectivePrefix}start_time'])!,
      finishTime: attachedDatabase.typeMapping.read(
          PgTypes.timestampNoTimezone, data['${effectivePrefix}finish_time'])!,
      priority: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}priority'])!,
    );
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(attachedDatabase, alias);
  }
}

class Task extends DataClass implements Insertable<Task> {
  final int id;
  final String title;
  final String description;
  final int amountOfHours;
  final double payment;
  final PgDate date;
  final PgDateTime startTime;
  final PgDateTime finishTime;
  final String priority;
  const Task(
      {required this.id,
      required this.title,
      required this.description,
      required this.amountOfHours,
      required this.payment,
      required this.date,
      required this.startTime,
      required this.finishTime,
      required this.priority});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['amount_of_hours'] = Variable<int>(amountOfHours);
    map['payment'] = Variable<double>(payment);
    map['date'] = Variable<PgDate>(date, PgTypes.date);
    map['start_time'] =
        Variable<PgDateTime>(startTime, PgTypes.timestampNoTimezone);
    map['finish_time'] =
        Variable<PgDateTime>(finishTime, PgTypes.timestampNoTimezone);
    map['priority'] = Variable<String>(priority);
    return map;
  }

  TasksCompanion toCompanion(bool nullToAbsent) {
    return TasksCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      amountOfHours: Value(amountOfHours),
      payment: Value(payment),
      date: Value(date),
      startTime: Value(startTime),
      finishTime: Value(finishTime),
      priority: Value(priority),
    );
  }

  factory Task.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Task(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      amountOfHours: serializer.fromJson<int>(json['amountOfHours']),
      payment: serializer.fromJson<double>(json['payment']),
      date: serializer.fromJson<PgDate>(json['date']),
      startTime: serializer.fromJson<PgDateTime>(json['startTime']),
      finishTime: serializer.fromJson<PgDateTime>(json['finishTime']),
      priority: serializer.fromJson<String>(json['priority']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'amountOfHours': serializer.toJson<int>(amountOfHours),
      'payment': serializer.toJson<double>(payment),
      'date': serializer.toJson<PgDate>(date),
      'startTime': serializer.toJson<PgDateTime>(startTime),
      'finishTime': serializer.toJson<PgDateTime>(finishTime),
      'priority': serializer.toJson<String>(priority),
    };
  }

  Task copyWith(
          {int? id,
          String? title,
          String? description,
          int? amountOfHours,
          double? payment,
          PgDate? date,
          PgDateTime? startTime,
          PgDateTime? finishTime,
          String? priority}) =>
      Task(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        amountOfHours: amountOfHours ?? this.amountOfHours,
        payment: payment ?? this.payment,
        date: date ?? this.date,
        startTime: startTime ?? this.startTime,
        finishTime: finishTime ?? this.finishTime,
        priority: priority ?? this.priority,
      );
  Task copyWithCompanion(TasksCompanion data) {
    return Task(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description:
          data.description.present ? data.description.value : this.description,
      amountOfHours: data.amountOfHours.present
          ? data.amountOfHours.value
          : this.amountOfHours,
      payment: data.payment.present ? data.payment.value : this.payment,
      date: data.date.present ? data.date.value : this.date,
      startTime: data.startTime.present ? data.startTime.value : this.startTime,
      finishTime:
          data.finishTime.present ? data.finishTime.value : this.finishTime,
      priority: data.priority.present ? data.priority.value : this.priority,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Task(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('amountOfHours: $amountOfHours, ')
          ..write('payment: $payment, ')
          ..write('date: $date, ')
          ..write('startTime: $startTime, ')
          ..write('finishTime: $finishTime, ')
          ..write('priority: $priority')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, description, amountOfHours,
      payment, date, startTime, finishTime, priority);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Task &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.amountOfHours == this.amountOfHours &&
          other.payment == this.payment &&
          other.date == this.date &&
          other.startTime == this.startTime &&
          other.finishTime == this.finishTime &&
          other.priority == this.priority);
}

class TasksCompanion extends UpdateCompanion<Task> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<int> amountOfHours;
  final Value<double> payment;
  final Value<PgDate> date;
  final Value<PgDateTime> startTime;
  final Value<PgDateTime> finishTime;
  final Value<String> priority;
  const TasksCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.amountOfHours = const Value.absent(),
    this.payment = const Value.absent(),
    this.date = const Value.absent(),
    this.startTime = const Value.absent(),
    this.finishTime = const Value.absent(),
    this.priority = const Value.absent(),
  });
  TasksCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String description,
    required int amountOfHours,
    required double payment,
    required PgDate date,
    required PgDateTime startTime,
    required PgDateTime finishTime,
    required String priority,
  })  : title = Value(title),
        description = Value(description),
        amountOfHours = Value(amountOfHours),
        payment = Value(payment),
        date = Value(date),
        startTime = Value(startTime),
        finishTime = Value(finishTime),
        priority = Value(priority);
  static Insertable<Task> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<int>? amountOfHours,
    Expression<double>? payment,
    Expression<PgDate>? date,
    Expression<PgDateTime>? startTime,
    Expression<PgDateTime>? finishTime,
    Expression<String>? priority,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (amountOfHours != null) 'amount_of_hours': amountOfHours,
      if (payment != null) 'payment': payment,
      if (date != null) 'date': date,
      if (startTime != null) 'start_time': startTime,
      if (finishTime != null) 'finish_time': finishTime,
      if (priority != null) 'priority': priority,
    });
  }

  TasksCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? description,
      Value<int>? amountOfHours,
      Value<double>? payment,
      Value<PgDate>? date,
      Value<PgDateTime>? startTime,
      Value<PgDateTime>? finishTime,
      Value<String>? priority}) {
    return TasksCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      amountOfHours: amountOfHours ?? this.amountOfHours,
      payment: payment ?? this.payment,
      date: date ?? this.date,
      startTime: startTime ?? this.startTime,
      finishTime: finishTime ?? this.finishTime,
      priority: priority ?? this.priority,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (amountOfHours.present) {
      map['amount_of_hours'] = Variable<int>(amountOfHours.value);
    }
    if (payment.present) {
      map['payment'] = Variable<double>(payment.value);
    }
    if (date.present) {
      map['date'] = Variable<PgDate>(date.value, PgTypes.date);
    }
    if (startTime.present) {
      map['start_time'] =
          Variable<PgDateTime>(startTime.value, PgTypes.timestampNoTimezone);
    }
    if (finishTime.present) {
      map['finish_time'] =
          Variable<PgDateTime>(finishTime.value, PgTypes.timestampNoTimezone);
    }
    if (priority.present) {
      map['priority'] = Variable<String>(priority.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('amountOfHours: $amountOfHours, ')
          ..write('payment: $payment, ')
          ..write('date: $date, ')
          ..write('startTime: $startTime, ')
          ..write('finishTime: $finishTime, ')
          ..write('priority: $priority')
          ..write(')'))
        .toString();
  }
}

class $DepartmentsTable extends Departments
    with TableInfo<$DepartmentsTable, Department> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DepartmentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, title];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'departments';
  @override
  VerificationContext validateIntegrity(Insertable<Department> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Department map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Department(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
    );
  }

  @override
  $DepartmentsTable createAlias(String alias) {
    return $DepartmentsTable(attachedDatabase, alias);
  }
}

class Department extends DataClass implements Insertable<Department> {
  final int id;
  final String title;
  const Department({required this.id, required this.title});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    return map;
  }

  DepartmentsCompanion toCompanion(bool nullToAbsent) {
    return DepartmentsCompanion(
      id: Value(id),
      title: Value(title),
    );
  }

  factory Department.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Department(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
    };
  }

  Department copyWith({int? id, String? title}) => Department(
        id: id ?? this.id,
        title: title ?? this.title,
      );
  Department copyWithCompanion(DepartmentsCompanion data) {
    return Department(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Department(')
          ..write('id: $id, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Department && other.id == this.id && other.title == this.title);
}

class DepartmentsCompanion extends UpdateCompanion<Department> {
  final Value<int> id;
  final Value<String> title;
  const DepartmentsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
  });
  DepartmentsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
  }) : title = Value(title);
  static Insertable<Department> custom({
    Expression<int>? id,
    Expression<String>? title,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
    });
  }

  DepartmentsCompanion copyWith({Value<int>? id, Value<String>? title}) {
    return DepartmentsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DepartmentsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }
}

class $DepartmentTasksTable extends DepartmentTasks
    with TableInfo<$DepartmentTasksTable, DepartmentTask> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DepartmentTasksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _taskIdMeta = const VerificationMeta('taskId');
  @override
  late final GeneratedColumn<int> taskId = GeneratedColumn<int>(
      'task_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES tasks (id)'));
  static const VerificationMeta _departmentIdMeta =
      const VerificationMeta('departmentId');
  @override
  late final GeneratedColumn<int> departmentId = GeneratedColumn<int>(
      'department_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES departments (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, taskId, departmentId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'department_tasks';
  @override
  VerificationContext validateIntegrity(Insertable<DepartmentTask> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('task_id')) {
      context.handle(_taskIdMeta,
          taskId.isAcceptableOrUnknown(data['task_id']!, _taskIdMeta));
    } else if (isInserting) {
      context.missing(_taskIdMeta);
    }
    if (data.containsKey('department_id')) {
      context.handle(
          _departmentIdMeta,
          departmentId.isAcceptableOrUnknown(
              data['department_id']!, _departmentIdMeta));
    } else if (isInserting) {
      context.missing(_departmentIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DepartmentTask map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DepartmentTask(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      taskId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}task_id'])!,
      departmentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}department_id'])!,
    );
  }

  @override
  $DepartmentTasksTable createAlias(String alias) {
    return $DepartmentTasksTable(attachedDatabase, alias);
  }
}

class DepartmentTask extends DataClass implements Insertable<DepartmentTask> {
  final int id;
  final int taskId;
  final int departmentId;
  const DepartmentTask(
      {required this.id, required this.taskId, required this.departmentId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['task_id'] = Variable<int>(taskId);
    map['department_id'] = Variable<int>(departmentId);
    return map;
  }

  DepartmentTasksCompanion toCompanion(bool nullToAbsent) {
    return DepartmentTasksCompanion(
      id: Value(id),
      taskId: Value(taskId),
      departmentId: Value(departmentId),
    );
  }

  factory DepartmentTask.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DepartmentTask(
      id: serializer.fromJson<int>(json['id']),
      taskId: serializer.fromJson<int>(json['taskId']),
      departmentId: serializer.fromJson<int>(json['departmentId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'taskId': serializer.toJson<int>(taskId),
      'departmentId': serializer.toJson<int>(departmentId),
    };
  }

  DepartmentTask copyWith({int? id, int? taskId, int? departmentId}) =>
      DepartmentTask(
        id: id ?? this.id,
        taskId: taskId ?? this.taskId,
        departmentId: departmentId ?? this.departmentId,
      );
  DepartmentTask copyWithCompanion(DepartmentTasksCompanion data) {
    return DepartmentTask(
      id: data.id.present ? data.id.value : this.id,
      taskId: data.taskId.present ? data.taskId.value : this.taskId,
      departmentId: data.departmentId.present
          ? data.departmentId.value
          : this.departmentId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DepartmentTask(')
          ..write('id: $id, ')
          ..write('taskId: $taskId, ')
          ..write('departmentId: $departmentId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, taskId, departmentId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DepartmentTask &&
          other.id == this.id &&
          other.taskId == this.taskId &&
          other.departmentId == this.departmentId);
}

class DepartmentTasksCompanion extends UpdateCompanion<DepartmentTask> {
  final Value<int> id;
  final Value<int> taskId;
  final Value<int> departmentId;
  const DepartmentTasksCompanion({
    this.id = const Value.absent(),
    this.taskId = const Value.absent(),
    this.departmentId = const Value.absent(),
  });
  DepartmentTasksCompanion.insert({
    this.id = const Value.absent(),
    required int taskId,
    required int departmentId,
  })  : taskId = Value(taskId),
        departmentId = Value(departmentId);
  static Insertable<DepartmentTask> custom({
    Expression<int>? id,
    Expression<int>? taskId,
    Expression<int>? departmentId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (taskId != null) 'task_id': taskId,
      if (departmentId != null) 'department_id': departmentId,
    });
  }

  DepartmentTasksCompanion copyWith(
      {Value<int>? id, Value<int>? taskId, Value<int>? departmentId}) {
    return DepartmentTasksCompanion(
      id: id ?? this.id,
      taskId: taskId ?? this.taskId,
      departmentId: departmentId ?? this.departmentId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (taskId.present) {
      map['task_id'] = Variable<int>(taskId.value);
    }
    if (departmentId.present) {
      map['department_id'] = Variable<int>(departmentId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DepartmentTasksCompanion(')
          ..write('id: $id, ')
          ..write('taskId: $taskId, ')
          ..write('departmentId: $departmentId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TasksTable tasks = $TasksTable(this);
  late final $DepartmentsTable departments = $DepartmentsTable(this);
  late final $DepartmentTasksTable departmentTasks =
      $DepartmentTasksTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [tasks, departments, departmentTasks];
}

typedef $$TasksTableCreateCompanionBuilder = TasksCompanion Function({
  Value<int> id,
  required String title,
  required String description,
  required int amountOfHours,
  required double payment,
  required PgDate date,
  required PgDateTime startTime,
  required PgDateTime finishTime,
  required String priority,
});
typedef $$TasksTableUpdateCompanionBuilder = TasksCompanion Function({
  Value<int> id,
  Value<String> title,
  Value<String> description,
  Value<int> amountOfHours,
  Value<double> payment,
  Value<PgDate> date,
  Value<PgDateTime> startTime,
  Value<PgDateTime> finishTime,
  Value<String> priority,
});

final class $$TasksTableReferences
    extends BaseReferences<_$AppDatabase, $TasksTable, Task> {
  $$TasksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$DepartmentTasksTable, List<DepartmentTask>>
      _departmentTasksRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.departmentTasks,
              aliasName:
                  $_aliasNameGenerator(db.tasks.id, db.departmentTasks.taskId));

  $$DepartmentTasksTableProcessedTableManager get departmentTasksRefs {
    final manager =
        $$DepartmentTasksTableTableManager($_db, $_db.departmentTasks)
            .filter((f) => f.taskId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_departmentTasksRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TasksTableFilterComposer extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get amountOfHours => $composableBuilder(
      column: $table.amountOfHours, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get payment => $composableBuilder(
      column: $table.payment, builder: (column) => ColumnFilters(column));

  ColumnFilters<PgDate> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<PgDateTime> get startTime => $composableBuilder(
      column: $table.startTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<PgDateTime> get finishTime => $composableBuilder(
      column: $table.finishTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get priority => $composableBuilder(
      column: $table.priority, builder: (column) => ColumnFilters(column));

  Expression<bool> departmentTasksRefs(
      Expression<bool> Function($$DepartmentTasksTableFilterComposer f) f) {
    final $$DepartmentTasksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.departmentTasks,
        getReferencedColumn: (t) => t.taskId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DepartmentTasksTableFilterComposer(
              $db: $db,
              $table: $db.departmentTasks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TasksTableOrderingComposer
    extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get amountOfHours => $composableBuilder(
      column: $table.amountOfHours,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get payment => $composableBuilder(
      column: $table.payment, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDate> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get startTime => $composableBuilder(
      column: $table.startTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get finishTime => $composableBuilder(
      column: $table.finishTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get priority => $composableBuilder(
      column: $table.priority, builder: (column) => ColumnOrderings(column));
}

class $$TasksTableAnnotationComposer
    extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<int> get amountOfHours => $composableBuilder(
      column: $table.amountOfHours, builder: (column) => column);

  GeneratedColumn<double> get payment =>
      $composableBuilder(column: $table.payment, builder: (column) => column);

  GeneratedColumn<PgDate> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<PgDateTime> get startTime =>
      $composableBuilder(column: $table.startTime, builder: (column) => column);

  GeneratedColumn<PgDateTime> get finishTime => $composableBuilder(
      column: $table.finishTime, builder: (column) => column);

  GeneratedColumn<String> get priority =>
      $composableBuilder(column: $table.priority, builder: (column) => column);

  Expression<T> departmentTasksRefs<T extends Object>(
      Expression<T> Function($$DepartmentTasksTableAnnotationComposer a) f) {
    final $$DepartmentTasksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.departmentTasks,
        getReferencedColumn: (t) => t.taskId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DepartmentTasksTableAnnotationComposer(
              $db: $db,
              $table: $db.departmentTasks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TasksTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TasksTable,
    Task,
    $$TasksTableFilterComposer,
    $$TasksTableOrderingComposer,
    $$TasksTableAnnotationComposer,
    $$TasksTableCreateCompanionBuilder,
    $$TasksTableUpdateCompanionBuilder,
    (Task, $$TasksTableReferences),
    Task,
    PrefetchHooks Function({bool departmentTasksRefs})> {
  $$TasksTableTableManager(_$AppDatabase db, $TasksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TasksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TasksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TasksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<int> amountOfHours = const Value.absent(),
            Value<double> payment = const Value.absent(),
            Value<PgDate> date = const Value.absent(),
            Value<PgDateTime> startTime = const Value.absent(),
            Value<PgDateTime> finishTime = const Value.absent(),
            Value<String> priority = const Value.absent(),
          }) =>
              TasksCompanion(
            id: id,
            title: title,
            description: description,
            amountOfHours: amountOfHours,
            payment: payment,
            date: date,
            startTime: startTime,
            finishTime: finishTime,
            priority: priority,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            required String description,
            required int amountOfHours,
            required double payment,
            required PgDate date,
            required PgDateTime startTime,
            required PgDateTime finishTime,
            required String priority,
          }) =>
              TasksCompanion.insert(
            id: id,
            title: title,
            description: description,
            amountOfHours: amountOfHours,
            payment: payment,
            date: date,
            startTime: startTime,
            finishTime: finishTime,
            priority: priority,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$TasksTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({departmentTasksRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (departmentTasksRefs) db.departmentTasks
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (departmentTasksRefs)
                    await $_getPrefetchedData<Task, $TasksTable,
                            DepartmentTask>(
                        currentTable: table,
                        referencedTable: $$TasksTableReferences
                            ._departmentTasksRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TasksTableReferences(db, table, p0)
                                .departmentTasksRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.taskId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TasksTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TasksTable,
    Task,
    $$TasksTableFilterComposer,
    $$TasksTableOrderingComposer,
    $$TasksTableAnnotationComposer,
    $$TasksTableCreateCompanionBuilder,
    $$TasksTableUpdateCompanionBuilder,
    (Task, $$TasksTableReferences),
    Task,
    PrefetchHooks Function({bool departmentTasksRefs})>;
typedef $$DepartmentsTableCreateCompanionBuilder = DepartmentsCompanion
    Function({
  Value<int> id,
  required String title,
});
typedef $$DepartmentsTableUpdateCompanionBuilder = DepartmentsCompanion
    Function({
  Value<int> id,
  Value<String> title,
});

final class $$DepartmentsTableReferences
    extends BaseReferences<_$AppDatabase, $DepartmentsTable, Department> {
  $$DepartmentsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$DepartmentTasksTable, List<DepartmentTask>>
      _departmentTasksRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.departmentTasks,
              aliasName: $_aliasNameGenerator(
                  db.departments.id, db.departmentTasks.departmentId));

  $$DepartmentTasksTableProcessedTableManager get departmentTasksRefs {
    final manager = $$DepartmentTasksTableTableManager(
            $_db, $_db.departmentTasks)
        .filter((f) => f.departmentId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_departmentTasksRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DepartmentsTableFilterComposer
    extends Composer<_$AppDatabase, $DepartmentsTable> {
  $$DepartmentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  Expression<bool> departmentTasksRefs(
      Expression<bool> Function($$DepartmentTasksTableFilterComposer f) f) {
    final $$DepartmentTasksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.departmentTasks,
        getReferencedColumn: (t) => t.departmentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DepartmentTasksTableFilterComposer(
              $db: $db,
              $table: $db.departmentTasks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DepartmentsTableOrderingComposer
    extends Composer<_$AppDatabase, $DepartmentsTable> {
  $$DepartmentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));
}

class $$DepartmentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DepartmentsTable> {
  $$DepartmentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  Expression<T> departmentTasksRefs<T extends Object>(
      Expression<T> Function($$DepartmentTasksTableAnnotationComposer a) f) {
    final $$DepartmentTasksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.departmentTasks,
        getReferencedColumn: (t) => t.departmentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DepartmentTasksTableAnnotationComposer(
              $db: $db,
              $table: $db.departmentTasks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DepartmentsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DepartmentsTable,
    Department,
    $$DepartmentsTableFilterComposer,
    $$DepartmentsTableOrderingComposer,
    $$DepartmentsTableAnnotationComposer,
    $$DepartmentsTableCreateCompanionBuilder,
    $$DepartmentsTableUpdateCompanionBuilder,
    (Department, $$DepartmentsTableReferences),
    Department,
    PrefetchHooks Function({bool departmentTasksRefs})> {
  $$DepartmentsTableTableManager(_$AppDatabase db, $DepartmentsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DepartmentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DepartmentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DepartmentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
          }) =>
              DepartmentsCompanion(
            id: id,
            title: title,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
          }) =>
              DepartmentsCompanion.insert(
            id: id,
            title: title,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DepartmentsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({departmentTasksRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (departmentTasksRefs) db.departmentTasks
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (departmentTasksRefs)
                    await $_getPrefetchedData<Department, $DepartmentsTable,
                            DepartmentTask>(
                        currentTable: table,
                        referencedTable: $$DepartmentsTableReferences
                            ._departmentTasksRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DepartmentsTableReferences(db, table, p0)
                                .departmentTasksRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.departmentId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DepartmentsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DepartmentsTable,
    Department,
    $$DepartmentsTableFilterComposer,
    $$DepartmentsTableOrderingComposer,
    $$DepartmentsTableAnnotationComposer,
    $$DepartmentsTableCreateCompanionBuilder,
    $$DepartmentsTableUpdateCompanionBuilder,
    (Department, $$DepartmentsTableReferences),
    Department,
    PrefetchHooks Function({bool departmentTasksRefs})>;
typedef $$DepartmentTasksTableCreateCompanionBuilder = DepartmentTasksCompanion
    Function({
  Value<int> id,
  required int taskId,
  required int departmentId,
});
typedef $$DepartmentTasksTableUpdateCompanionBuilder = DepartmentTasksCompanion
    Function({
  Value<int> id,
  Value<int> taskId,
  Value<int> departmentId,
});

final class $$DepartmentTasksTableReferences extends BaseReferences<
    _$AppDatabase, $DepartmentTasksTable, DepartmentTask> {
  $$DepartmentTasksTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $TasksTable _taskIdTable(_$AppDatabase db) => db.tasks.createAlias(
      $_aliasNameGenerator(db.departmentTasks.taskId, db.tasks.id));

  $$TasksTableProcessedTableManager get taskId {
    final $_column = $_itemColumn<int>('task_id')!;

    final manager = $$TasksTableTableManager($_db, $_db.tasks)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_taskIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $DepartmentsTable _departmentIdTable(_$AppDatabase db) =>
      db.departments.createAlias($_aliasNameGenerator(
          db.departmentTasks.departmentId, db.departments.id));

  $$DepartmentsTableProcessedTableManager get departmentId {
    final $_column = $_itemColumn<int>('department_id')!;

    final manager = $$DepartmentsTableTableManager($_db, $_db.departments)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_departmentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$DepartmentTasksTableFilterComposer
    extends Composer<_$AppDatabase, $DepartmentTasksTable> {
  $$DepartmentTasksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  $$TasksTableFilterComposer get taskId {
    final $$TasksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.taskId,
        referencedTable: $db.tasks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TasksTableFilterComposer(
              $db: $db,
              $table: $db.tasks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DepartmentsTableFilterComposer get departmentId {
    final $$DepartmentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.departmentId,
        referencedTable: $db.departments,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DepartmentsTableFilterComposer(
              $db: $db,
              $table: $db.departments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DepartmentTasksTableOrderingComposer
    extends Composer<_$AppDatabase, $DepartmentTasksTable> {
  $$DepartmentTasksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  $$TasksTableOrderingComposer get taskId {
    final $$TasksTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.taskId,
        referencedTable: $db.tasks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TasksTableOrderingComposer(
              $db: $db,
              $table: $db.tasks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DepartmentsTableOrderingComposer get departmentId {
    final $$DepartmentsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.departmentId,
        referencedTable: $db.departments,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DepartmentsTableOrderingComposer(
              $db: $db,
              $table: $db.departments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DepartmentTasksTableAnnotationComposer
    extends Composer<_$AppDatabase, $DepartmentTasksTable> {
  $$DepartmentTasksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  $$TasksTableAnnotationComposer get taskId {
    final $$TasksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.taskId,
        referencedTable: $db.tasks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TasksTableAnnotationComposer(
              $db: $db,
              $table: $db.tasks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DepartmentsTableAnnotationComposer get departmentId {
    final $$DepartmentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.departmentId,
        referencedTable: $db.departments,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DepartmentsTableAnnotationComposer(
              $db: $db,
              $table: $db.departments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DepartmentTasksTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DepartmentTasksTable,
    DepartmentTask,
    $$DepartmentTasksTableFilterComposer,
    $$DepartmentTasksTableOrderingComposer,
    $$DepartmentTasksTableAnnotationComposer,
    $$DepartmentTasksTableCreateCompanionBuilder,
    $$DepartmentTasksTableUpdateCompanionBuilder,
    (DepartmentTask, $$DepartmentTasksTableReferences),
    DepartmentTask,
    PrefetchHooks Function({bool taskId, bool departmentId})> {
  $$DepartmentTasksTableTableManager(
      _$AppDatabase db, $DepartmentTasksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DepartmentTasksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DepartmentTasksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DepartmentTasksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> taskId = const Value.absent(),
            Value<int> departmentId = const Value.absent(),
          }) =>
              DepartmentTasksCompanion(
            id: id,
            taskId: taskId,
            departmentId: departmentId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int taskId,
            required int departmentId,
          }) =>
              DepartmentTasksCompanion.insert(
            id: id,
            taskId: taskId,
            departmentId: departmentId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DepartmentTasksTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({taskId = false, departmentId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (taskId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.taskId,
                    referencedTable:
                        $$DepartmentTasksTableReferences._taskIdTable(db),
                    referencedColumn:
                        $$DepartmentTasksTableReferences._taskIdTable(db).id,
                  ) as T;
                }
                if (departmentId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.departmentId,
                    referencedTable:
                        $$DepartmentTasksTableReferences._departmentIdTable(db),
                    referencedColumn: $$DepartmentTasksTableReferences
                        ._departmentIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$DepartmentTasksTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DepartmentTasksTable,
    DepartmentTask,
    $$DepartmentTasksTableFilterComposer,
    $$DepartmentTasksTableOrderingComposer,
    $$DepartmentTasksTableAnnotationComposer,
    $$DepartmentTasksTableCreateCompanionBuilder,
    $$DepartmentTasksTableUpdateCompanionBuilder,
    (DepartmentTask, $$DepartmentTasksTableReferences),
    DepartmentTask,
    PrefetchHooks Function({bool taskId, bool departmentId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TasksTableTableManager get tasks =>
      $$TasksTableTableManager(_db, _db.tasks);
  $$DepartmentsTableTableManager get departments =>
      $$DepartmentsTableTableManager(_db, _db.departments);
  $$DepartmentTasksTableTableManager get departmentTasks =>
      $$DepartmentTasksTableTableManager(_db, _db.departmentTasks);
}
