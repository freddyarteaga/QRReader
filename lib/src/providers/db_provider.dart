import 'package:sqflite/sqflite.dart';

// archivo encargado de manejar la base de datos sqflite
class DBProvider {
  // patron singletone, que solo podamos tener una instancia de nuetro DBProvider de manera global
  // en la aplicacion
  static Database _database;
  static final DBProvider db = DBProvider._();
  // constructor privado
  DBProvider._();

  Future<Database> get database async {
    if (_database != null) return _database;

    _database = await initDB();

    return _database;
  }

  initDB() async {}
}
