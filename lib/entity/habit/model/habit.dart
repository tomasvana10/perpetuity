import "package:isar/isar.dart";
import "package:perpetuity/entity/habit/model/aspect.dart";
import "package:perpetuity/entity/habit/model/schedule.dart";
import "package:perpetuity/entity/habit/model/tracker.dart";
import "package:uuid/uuid.dart";

part "isar/habit.g.dart";

@collection
class Habit {
  Id id = Isar.autoIncrement;

  String name;
  String notes;
  String materialIcon;
  @enumerated
  HabitCategory category;
  @enumerated
  HabitIntent intent;

  final HabitSchedule schedule;
  final HabitTracker tracker;

  final String uuid;
  final DateTime creationTime;

  Habit({
    required this.name,
    required this.notes,
    required this.materialIcon,
    required this.category,
    required this.intent,
    required this.schedule,
    required this.tracker,
  }) : uuid = Uuid().v4(),
       creationTime = DateTime.now();
}
