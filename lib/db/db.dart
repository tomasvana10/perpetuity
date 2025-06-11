import "package:isar/isar.dart";
import "package:path_provider/path_provider.dart";
import "package:perpetuity/entity/habit/model/habit.dart";
import "package:shared_preferences/shared_preferences.dart";

class AppDB {
  static const _latestSchemaVersion = 1;
  static const _schemas = [HabitSchema];
  static Isar? _db;

  static Future<Isar> get db async => _db ??= await _initDb();

  static Future<Isar> _initDb() async {
    final dir = await getApplicationDocumentsDirectory();

    final isar = await Isar.open(AppDB._schemas, directory: dir.path);

    await _performMigrationIfNeeded(isar);

    return isar;
  }

  static Future<void> _performMigrationIfNeeded(Isar isar) async {
    final prefs = await SharedPreferences.getInstance();

    final currentVersion =
        prefs.getInt("version") ?? AppDB._latestSchemaVersion;

    // NOTE: refer to https://isar.dev/recipes/data_migration.html 
    // for samples on how to implement manual migration once required
    switch (currentVersion) {
      case 1:
        print("You are on the current schema version");
    }

    await prefs.setInt("version", AppDB._latestSchemaVersion);
  }
}
