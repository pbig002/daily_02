import 'package:hive/hive.dart';

part 'note.g.dart';

@HiveType(typeId: 0)
class Note {
  @HiveField(0)
  final String topic;
  @HiveField(1)
  final String description;

  Note(this.topic, this.description);
}
