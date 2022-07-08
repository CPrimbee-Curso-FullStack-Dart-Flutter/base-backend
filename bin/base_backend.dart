import 'package:mysql1/mysql1.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';

void main() async {
  final conn = await MySqlConnection.connect(
    ConnectionSettings(
      host: 'localhost',
      port: 3307,
      user: 'root',
      db: 'delivery',
      password: 'root',
    ),
  );

  await conn
      .query("insert into tb_permissoes(nome, status) values ('ADMIN', 'A')");
  print(await conn.query('select * from tb_permissoes'));

  await serve(
    (Request req) => Response(200,
        body: 'Olá Mundo!', headers: {'Content-Type': 'application/json'}),
    'localhost',
    8086,
  );
}
