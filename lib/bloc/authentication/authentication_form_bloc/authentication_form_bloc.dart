import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

import '../../../data/validator/input_validator.dart';
import 'authentication_form_event.dart';
import 'authentication_form_state.dart';

class AuthenticationFormBloc
    extends Bloc<AuthenticationFormEvent, AuthenticationFormState> {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Stream<String> get emailStream => _emailController.stream;
  Stream<String> get passwordStream => _passwordController.stream;
  Stream<bool> get validateStream => Rx.combineLatest2(emailStream, passwordStream, (a, b) => true);

  AuthenticationFormBloc() : super(InitialState()) {
    on<ClearStreamsEvent>((event, emit) {
      _emailController.sink.add('');
      _passwordController.sink.add('');
    });
    on<UpdatePasswordEvent>((event, emit) {
      if(InputValidator.passwordValidation(event.props[0].toString())){
        _passwordController.sink.add(event.props[0].toString());
      }else{
        _passwordController.sink.addError('Password is too short');
      }
    });
    on<UpdateEmailEvent>((event, emit) {
      if(InputValidator.emailValidation(event.props[0].toString())){
        _emailController.sink.add(event.props[0].toString());
      }else{
        _emailController.sink.addError('Incorrect email.');
      }
    });
  }
}
