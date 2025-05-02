import 'package:drift/drift.dart';

Value<T> setIfChanged<T>(T? oldVal, T? newVal) {
  return (oldVal != newVal && newVal != null) ? Value(newVal) : Value.absent();
}
