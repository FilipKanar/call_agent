import 'package:equatable/equatable.dart';

abstract class AuthenticationEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SignInRequested extends AuthenticationEvent {
  final String email;
  final String password;

  SignInRequested(this.email, this.password);
}

class AnonymousSignInRequested extends AuthenticationEvent {}

class SignUpRequested extends AuthenticationEvent {
  final String email;
  final String password;

  SignUpRequested(this.email, this.password);
}

class SignOutRequested extends AuthenticationEvent {}
