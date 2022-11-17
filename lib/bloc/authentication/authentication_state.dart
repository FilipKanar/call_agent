
import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable{
  @override
  List<Object?> get props => [];}

class Loading extends AuthenticationState {}

class Authenticated extends AuthenticationState {}

class UnAuthenticated extends AuthenticationState {}

class AuthenticationError extends AuthenticationState {
  final String error;
  AuthenticationError(this.error);
  @override
  List<Object?> get props => [error];
}