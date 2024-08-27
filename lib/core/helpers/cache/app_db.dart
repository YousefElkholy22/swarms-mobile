import 'package:sqflite/sqflite.dart';

class AppDB {
  late final Database _db;

  AppDB() {
    _initDB();
  }


  // helper methods
  // ... 



  Future<void> _initDB() async {
    final databasePath = await getDatabasesPath();
    final path = '$databasePath/app.db';
    _db = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(Database db, int version) async {
    await db.execute('''''');
  }
}
