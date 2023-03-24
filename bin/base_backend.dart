import 'package:mysql1/mysql1.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';

import 'package:commons_core/commons_core.dart';

import 'core/database/database_mysql_adapter.dart';

void main() async {
  // await DatabaseMySqlAdapter()
  //     .query("insert into tb_permissoes(nome, status) values ('ADMIN', 'A')");
  print(await DatabaseMySqlAdapter().query('select * from tb_permissoes'));

  // await serve(
  //   (Request req) => Response(200,
  //       body: 'Olá Mundo!', headers: {'Content-Type': 'application/json'}),
  //   'localhost',
  //   8086,
  // );
}
