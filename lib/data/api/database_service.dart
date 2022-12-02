import 'package:call_agent/data/model/connection.dart';

abstract class DatabaseService{
  Future<void> addNewCall({required Connection connection});
  Future<void> deleteCall({required Connection connection});
  Stream<List<Connection>> userConnections();
  Future<void> updateCall({required Connection connection});
}