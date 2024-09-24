import 'package:evnto/core/constants/app_constants.dart';
import 'package:sqflite/sqflite.dart';

class AppDB {
  late final Database _db;

  AppDB();

  Future<void> initDB() async {
    final databasePath = await getDatabasesPath();
    final path = '$databasePath/app.db';
    _db = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  // helper methods

  Future<List<Map<String, Object?>>> getAllMessage() {
    return _db.query(DBKeys.chatbotTable);
  }

  void insertMessage(Map<String, dynamic> message) async {
    await _db.insert(DBKeys.chatbotTable, message);
  }

  _onCreate(Database db, int version) async {
    await db.execute('''
create table ${DBKeys.chatbotTable} ( 
  ${DBKeys.message} text not null,
  ${DBKeys.isBot} boolean not null,
  ${DBKeys.date} integar not null
)
''');
  }
}
