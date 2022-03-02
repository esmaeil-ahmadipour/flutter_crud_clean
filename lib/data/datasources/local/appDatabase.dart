import 'dart:async';
import 'package:floor/floor.dart';
import 'package:mc_crud_test/data/datasources/local/customerDao.dart';
import 'package:mc_crud_test/domain/entities/customer.dart';
import 'package:sqflite/sqflite.dart' as sqflite;


part 'appDatabase.g.dart';

@Database(version: 1, entities: [Customer])
abstract class AppDatabase extends FloorDatabase {
  CustomerDao get customerDao;
}