import 'package:equatable/equatable.dart';

abstract class AuthenticationFormState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class InitialState extends AuthenticationFormState {}

class PasswordError extends AuthenticationFormState{
  final String errorMessage;
  PasswordError({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}

class UsernameUpdate extends AuthenticationFormState{
}

class PasswordUpdated extends AuthenticationFormState{}
class AuthenticationFormValidating extends AuthenticationFormState{
  final String email;
  final String password;
  @override
  List<Object?> get props => [email,password];
  AuthenticationFormValidating(this.email,this.password);
}
class AuthenticationFormValidatingError extends AuthenticationFormState{}