import "package:flutter/foundation.dart";
import "package:sembast/sembast_io.dart";
import "package:path_provider/path_provider.dart";
import "package:path/path.dart" as path;

class PerpetuityDB<K, V> {
  final String _dbName;
  //ignore: unused_field
  final String _storeName;
  //ignore: unused_field
  final StoreFactory _storeFactory;

  late Database _db;
  late final StoreRef<K, V> _store;

  @protected
  PerpetuityDB({
    required String dbName,
    required StoreFactory storeFactory,
    required String storeName,
  }) : _dbName = dbName,
       _storeFactory = storeFactory,
       _storeName = storeName,
       _store = storeFactory.store(storeName) as StoreRef<K, V>;

  String get _dbFileName => "$_dbName.db";

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    final dbPath = path.join(dir.path, _dbFileName);
    _db = await databaseFactoryIo.openDatabase(dbPath);
  }

  Future<K> insert(V val) async {
    return await _store.add(_db, val);
  }

  Future<void> update(K key, V val) async {
    await _store.record(key).put(_db, val);
  }

  Future<V?> get(K key) async {
    return await _store.record(key).get(_db);
  }

  Future<void> delete(K key) async {
    await _store.record(key).delete(_db);
  }

  Future<bool> exists(K key) async {
    return await _store.record(key).exists(_db);
  }

  Future<List<RecordSnapshot<K, V>>> getAll() async {
    return await _store.find(_db);
  }

  Future<void> deleteAll() async {
    await _store.delete(_db);
  }

  Future<List<RecordSnapshot<K, V>>> getWithFinder(Finder finder) async {
    return await _store.find(_db, finder: finder);
  }
}
