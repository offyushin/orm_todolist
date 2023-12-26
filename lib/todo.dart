import 'package:hive/hive.dart';
part 'todo.g.dart';

@HiveType(typeId: 0)
class Todo extends HiveObject {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String title;

  @HiveField(2)
  int dateTime;

  @HiveField(3)
  bool isDone;

//<editor-fold desc="Data Methods">
  Todo({
    required this.title,
    required this.dateTime,
    this.isDone = false,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Todo &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          dateTime == other.dateTime);

  @override
  int get hashCode => title.hashCode ^ dateTime.hashCode;

  @override
  String toString() {
    return 'Todo{' + ' title: $title,' + ' dateTime: $dateTime,' + '}';
  }

  Todo copyWith({
    String? title,
    int? dateTime,
  }) {
    return Todo(
      title: title ?? this.title,
      dateTime: dateTime ?? this.dateTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'dateTime': this.dateTime,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      title: map['title'] as String,
      dateTime: map['dateTime'] as int,
    );
  }

//</editor-fold>
}