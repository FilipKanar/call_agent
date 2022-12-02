import 'package:bloc_test/bloc_test.dart';
import 'package:call_agent/bloc/database/database_bloc.dart';
import 'package:call_agent/bloc/database/database_event.dart';
import 'package:call_agent/bloc/database/database_state.dart';
import 'package:call_agent/data/api/database_service.dart';
import 'package:call_agent/data/model/connection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'database_bloc_test.mocks.dart';

@GenerateMocks([DatabaseService, Connection])
void main() {
  late MockDatabaseService mockDatabaseService;
  late MockConnection mockConnection;
  setUp(
        () {
      mockDatabaseService=MockDatabaseService();
      mockConnection = MockConnection();
    },
  );
  group(
    'Database Bloc Test',
    () {
      blocTest<DatabaseBloc, DatabaseState>(
        'Add new call test',
        build: () {
          when(
            mockDatabaseService.addNewCall(connection: mockConnection),
          ).thenAnswer(
            Future.value,
          );
          return DatabaseBloc(databaseService: mockDatabaseService);
        },
        act: (bloc) => bloc.add(
          AddNewConnection(connection: mockConnection),
        ),
        expect: () => [
          AddSuccess(),
        ],
      );
    },
  );
  group(
    'Database Bloc Test Fail',
    () {
      blocTest<DatabaseBloc, DatabaseState>(
        'Add new call test throws Exception',
        build: () {
          when(
            mockDatabaseService.addNewCall(connection: mockConnection),
          ).thenThrow(Exception());
          return DatabaseBloc(databaseService: mockDatabaseService);
        },
        act: (bloc) => bloc.add(
          AddNewConnection(connection: mockConnection),
        ),
        expect: () => [
          AddFailure(),
        ],
      );
    },
  );
}
