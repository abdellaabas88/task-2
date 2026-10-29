import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final String name;
  final String date;
  final String description;

  const Task({
    required this.name,
    required this.date,
    required this.description,
  });

  @override
  List<Object?> get props => [name, date, description];

  Task copyWith({String? name, String? date, String? description}) {
    return Task(
      name: name ?? this.name,
      date: date ?? this.date,
      description: description ?? this.description,
    );
  }
}
