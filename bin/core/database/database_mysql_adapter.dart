import 'package:commons_core/commons_core.dart';
import 'package:mysql1/mysql1.dart';

import 'database.dart';

class DatabaseMySqlAdapter implements Database {
  @override
  Future<MySqlConnection> get getConnection async =>
      await MySqlConnection.connect(
        ConnectionSettings(
          host: await CustomEnv.get<String>(key: 'host'),
          port: await CustomEnv.get<int>(key: 'port'),
          user: await CustomEnv.get<String>(key: 'user'),
          db: await CustomEnv.get<String>(key: 'db'),
          password: await CustomEnv.get<String>(key: 'password'),
        ),
      );

  @override
  query(String sql, [List? params]) async {
    var conn = await getConnection;
    return conn.query(sql, params);
  }
}
