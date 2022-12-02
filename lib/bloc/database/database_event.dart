
import 'package:equatable/equatable.dart';

import '../../data/model/connection.dart';

class DatabaseEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddNewConnection extends DatabaseEvent{
  final Connection connection;
  AddNewConnection({required this.connection});
  @override
  List<Object?> get props => [connection];
}

class GetConnections extends DatabaseEvent{
}