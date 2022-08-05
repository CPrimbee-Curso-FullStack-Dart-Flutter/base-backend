abstract class Database<T> {
  query(String sql, [List? params]);
  Future<T> get getConnection;
}
