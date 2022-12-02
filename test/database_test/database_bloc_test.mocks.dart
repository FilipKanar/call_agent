// Mocks generated by Mockito 5.3.2 from annotations
// in call_agent/test/database_test/database_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:call_agent/data/api/database_service.dart' as _i3;
import 'package:call_agent/data/model/connection.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _Fake$ConnectionCopyWith_0<$Res> extends _i1.SmartFake
    implements _i2.$ConnectionCopyWith<$Res> {
  _Fake$ConnectionCopyWith_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [DatabaseService].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatabaseService extends _i1.Mock implements _i3.DatabaseService {
  MockDatabaseService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<void> addNewCall({required _i2.Connection? connection}) =>
      (super.noSuchMethod(
        Invocation.method(
          #addNewCall,
          [],
          {#connection: connection},
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> deleteCall({required _i2.Connection? connection}) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteCall,
          [],
          {#connection: connection},
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Stream<List<_i2.Connection>> userConnections() => (super.noSuchMethod(
        Invocation.method(
          #userConnections,
          [],
        ),
        returnValue: _i4.Stream<List<_i2.Connection>>.empty(),
      ) as _i4.Stream<List<_i2.Connection>>);
  @override
  _i4.Future<void> updateCall({required _i2.Connection? connection}) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateCall,
          [],
          {#connection: connection},
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [Connection].
///
/// See the documentation for Mockito's code generation for more information.
class MockConnection extends _i1.Mock implements _i2.Connection {
  MockConnection() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get id => (super.noSuchMethod(
        Invocation.getter(#id),
        returnValue: '',
      ) as String);
  @override
  String get userId => (super.noSuchMethod(
        Invocation.getter(#userId),
        returnValue: '',
      ) as String);
  @override
  String get title => (super.noSuchMethod(
        Invocation.getter(#title),
        returnValue: '',
      ) as String);
  @override
  String get description => (super.noSuchMethod(
        Invocation.getter(#description),
        returnValue: '',
      ) as String);
  @override
  String get phoneNumber => (super.noSuchMethod(
        Invocation.getter(#phoneNumber),
        returnValue: '',
      ) as String);
  @override
  String get website => (super.noSuchMethod(
        Invocation.getter(#website),
        returnValue: '',
      ) as String);
  @override
  _i2.$ConnectionCopyWith<_i2.Connection> get copyWith => (super.noSuchMethod(
        Invocation.getter(#copyWith),
        returnValue: _Fake$ConnectionCopyWith_0<_i2.Connection>(
          this,
          Invocation.getter(#copyWith),
        ),
      ) as _i2.$ConnectionCopyWith<_i2.Connection>);
  @override
  Map<String, dynamic> toJson() => (super.noSuchMethod(
        Invocation.method(
          #toJson,
          [],
        ),
        returnValue: <String, dynamic>{},
      ) as Map<String, dynamic>);
}
