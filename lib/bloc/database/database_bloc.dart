import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/api/database_service.dart';
import 'database_event.dart';
import 'database_state.dart';

class DatabaseBloc extends Bloc<DatabaseEvent, DatabaseState> {
  final DatabaseService databaseService;

  DatabaseBloc({required this.databaseService}) : super(InitialState()) {
    on<AddNewConnection>(
      (event, emit) async {
        try {
          await databaseService.addNewCall(connection: event.connection);
          emit(AddSuccess());
        } catch (e) {
          emit(AddFailure());
        }
      },
    );
  }
}
