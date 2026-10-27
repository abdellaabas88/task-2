import 'package:equatable/equatable.dart';
import '../models/task.dart';

class TodoState extends Equatable {
  final List<Task> tasks;

  TodoState({required List<Task> tasks}) : tasks = List.unmodifiable(tasks);

  @override
  List<Object?> get props => [tasks];
}

// final class TodoInitial extends TodoState {}
