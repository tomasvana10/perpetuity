import "package:perpetuity/db/db.dart";
import "package:perpetuity/habit/model/habit.dart";
import "package:sembast/sembast_io.dart";

class HabitDB extends PerpetuityDB<int, Habit> {
  static final HabitDB _instance = HabitDB._();
  static HabitDB get instance => _instance;

  HabitDB._()
    : super(
        dbName: "perpetuity_habits",
        storeFactory: intMapStoreFactory,
        storeName: "perpetuity_habits_store",
      );
}
