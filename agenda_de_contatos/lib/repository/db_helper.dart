import 'package:sqflite/sqflite.dart';

class DbHelper {
  static const _dbName = 'contacts.db';
  static const _version = 1;
  static const _tableName = 'contacts';
  static const String _tableStructure = '''
    CREATE TABLE ${_tableName}(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    photoPath VARCHAR(50) NOT NULL,
    phone CHAR(17) NOT NULL,
    email VARCHAR(30) NOT NULL,
    isFavorite CHAR(1) NOT NULL
    );
''';

  static Future<Database> getInstance() async {
    final path = '${getDatabasesPath()} $_dbName';
    return await openDatabase(
      path,
      version: _version,
      onCreate: (db, version) async {
        await db.execute(_tableStructure);
      },
    );
  }
}
