import 'package:call_agent/bloc/authentication/authentication_bloc.dart';
import 'package:call_agent/view/authentication/sign_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: BlocProvider.of<AuthenticationBloc>(context).authenticationService.currentUser(),
        builder: (context, snapshot) {
          return snapshot.hasData ? Container() : const SignScreen();
        });
  }
}
