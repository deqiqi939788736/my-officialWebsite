import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:path/path.dart';

import '../../common/config.dart';

const driving_record = "table_driving_record";

class LocalDB {
  // Database? _db;
  // static late String windowsPath;
  //
  // LocalDB() {
  //   // initDB();
  // }
  //
  // void initDB() async {
  //   if (Platform.isWindows) {
  //     initialWindowsDatabase();
  //     return;
  //   }
  //   if (Platform.isMacOS || Platform.isIOS) {
  //     getApplicationDocumentsDirectory().then((directory) {
  //       //todo:数据库有表中字段添加或删除时，需要从新写入本地
  //       ///删除上一个版本的数据库
  //       databaseExists(directory.path + "/" + Config.LAST_VERSION_DBNAME)
  //           .then((bools) {
  //         if (bools) {
  //           deleteDatabase(directory.path + "/" + Config.LAST_VERSION_DBNAME);
  //         }
  //       });
  //       databaseExists(directory.path + "/" + Config.DBNAME).then((bools) {
  //         if (!bools) {
  //           print("写入数据库");
  //           _writeDB(directory.path + "/" + Config.DBNAME);
  //         }
  //       });
  //     });
  //     return;
  //   }
  //   getDatabasesPath().then((path) {
  //     //todo:数据库有表中字段添加或删除时，需要从新写入本地
  //     ///删除上一个版本的数据库
  //     databaseExists(path + "/" + Config.LAST_VERSION_DBNAME).then((bools) {
  //       if (bools) {
  //         deleteDatabase(path + "/" + Config.LAST_VERSION_DBNAME);
  //       }
  //     });
  //     databaseExists(path + "/" + Config.DBNAME).then((bools) {
  //       if (!bools) {
  //         print("写入数据库");
  //         _writeDB(path + "/" + Config.DBNAME);
  //       }
  //     });
  //   });
  // }
  //
  // initialWindowsDatabase() async {
  //   sqfliteFfiInit();
  //   var databaseFactory = databaseFactoryFfi;
  //   var databasesPath = await databaseFactory.getDatabasesPath();
  //   windowsPath = join(databasesPath, Config.DBNAME);
  //   // debugPrint(windowsPath);
  //   var exists = await databaseFactory.databaseExists(windowsPath);
  //   if (!exists) {
  //     try {
  //       await Directory(dirname(windowsPath)).create(recursive: true);
  //       _writeDB(windowsPath);
  //     } catch (_) {}
  //   }
  // }
  //
  // _writeDB(String path) async {
  //   // ByteData data = await rootBundle.load(join("assets/db/", Config.DBNAME));
  //   // List<int> bytes =
  //   //     data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  //   // File(path).writeAsBytes(bytes);
  // }
  //
  // Future<bool> saveOcrRecord(Map<String, dynamic> map) {
  //   return insert(driving_record, map);
  // }
  //
  // Future<dynamic> getOcrRecord() {
  //   return query(driving_record);
  // }
  //
  // Future<dynamic> query(String table) async {
  //   await _open();
  //   try {
  //     var list = await _db!.query(table);
  //     _close();
  //     if (list.isNotEmpty) {
  //       return Future.value(list);
  //     }
  //   } catch (e) {
  //     _close();
  //     return Future.value(null);
  //   }
  // }
  //
  // Future<bool> insert(String table, Map<String, dynamic> map) async {
  //   await _open();
  //   try {
  //     var i = await _db!.insert(table, map);
  //     _close();
  //     return Future.value(i > 0);
  //   } catch (e) {
  //     _close();
  //     return Future.value(false);
  //   }
  // }
  //
  // Future _open(
  //     {String path = Config.DBNAME, bool singleInstance = true}) async {
  //   if (Platform.isWindows) {
  //     _db ??= await databaseFactoryFfi.openDatabase(windowsPath);
  //   } else {
  //     _db ??= await openDatabase(path,
  //         version: 1,
  //         singleInstance: singleInstance, onCreate: (db, version) async {
  //       await db.execute(
  //           'CREATE TABLE $driving_record (carNum TEXT PRIMARY KEY, name TEXT, '
  //           'date TEXT, engineNum TEXT, address TEXT, issuingUnit TEXT, carType TEXT, '
  //           'brandModel TEXT, registerData TEXT, usageNature TEXT, vehicleCode TEXT, ocrDate TEXT)');
  //     });
  //   }
  // }
  //
  // Future _close() async {
  //   if (_db != null) {
  //     _db!.close();
  //   }
  //   _db = null;
  // }
}
