import 'package:equatable/equatable.dart';

abstract class AuthenticationFormEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class UpdateEmailEvent extends AuthenticationFormEvent {
  final String email;
  UpdateEmailEvent({required this.email});
  @override
  List<Object?> get props => [email];
}

class ClearStreamsEvent extends AuthenticationFormEvent{}

class UpdatePasswordEvent extends AuthenticationFormEvent{
  final String password;
  UpdatePasswordEvent({required this.password});
  @override
  List<Object?> get props => [password];
}

class ValidateForm extends AuthenticationFormEvent{}
