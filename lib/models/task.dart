class Task {
  final String name;
  final String date;
  final String description;

  Task({required this.name, required this.date, required this.description});

  Task copyWith({String? name, String? date, String? description}) {
    return Task(
      name: name ?? this.name,
      date: date ?? this.date,
      description: description ?? this.description,
    );
  }
}
