
import 'package:equatable/equatable.dart';

abstract class DatabaseState extends Equatable{
  @override
  List<Object?> get props => [];
}

class InitialState extends DatabaseState {
}

class AddSuccess extends DatabaseState {
}

class AddFailure extends DatabaseState {
}
