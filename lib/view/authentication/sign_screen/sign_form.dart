import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../bloc/authentication/authentication_bloc.dart';
import '../../../bloc/authentication/authentication_event.dart';
import '../../../bloc/authentication/authentication_form_bloc/authentication_form_bloc.dart';
import '../../../bloc/authentication/authentication_form_bloc/authentication_form_event.dart';
import '../../../bloc/authentication/authentication_state.dart';
import '../../../theme/app_dimensions.dart';
import '../../../theme/app_text_style.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      stream: BlocProvider.of<AuthenticationFormBloc>(context).emailStream,
      builder: (context, emailSnapshot) {
        return StreamBuilder<Object>(
          stream:
          BlocProvider.of<AuthenticationFormBloc>(context).passwordStream,
          builder: (context, passwordSnapshot) {
            return Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(AppDimensions.spacingNarrow),
                    child: TextField(
                      onChanged: (email) {
                        BlocProvider.of<AuthenticationFormBloc>(context).add(
                          UpdateEmailEvent(email: email),
                        );
                      },
                      decoration: AppTextStyles.textFormFieldDecoration(
                        error: emailSnapshot.hasError
                            ? emailSnapshot.error.toString()
                            : null,
                        hint: AppLocalizations.of(context)!.emailHint,
                        label: AppLocalizations.of(context)!.email,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppDimensions.spacingNarrow),
                    child: TextField(
                      obscureText: true,
                      onChanged: (password) {
                        BlocProvider.of<AuthenticationFormBloc>(context)
                            .add(UpdatePasswordEvent(password: password));
                      },
                      decoration: AppTextStyles.textFormFieldDecoration(
                        error: passwordSnapshot.hasError
                            ? passwordSnapshot.error.toString()
                            : null,
                        hint: AppLocalizations.of(context)!.passwordHint,
                        label: AppLocalizations.of(context)!.password,
                      ),
                    ),
                  ),
                  BlocBuilder<AuthenticationBloc, AuthenticationState>(
                    builder: (context, state) {
                      if (state is AuthenticationError){
                        return Text(state.error);}
                      return Container();
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: AppDimensions.spacingNarrow),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            emailSnapshot.hasData && passwordSnapshot.hasData
                                ? BlocProvider.of<AuthenticationBloc>(context)
                                .add(
                              SignUpRequested(
                                emailSnapshot.data.toString(),
                                passwordSnapshot.data.toString(),
                              ),
                            )
                                : null;
                          },
                          child: Text(AppLocalizations.of(context)!.signUp),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            emailSnapshot.hasData && passwordSnapshot.hasData
                                ? BlocProvider.of<AuthenticationBloc>(context)
                                .add(
                              SignInRequested(
                                emailSnapshot.data.toString(),
                                passwordSnapshot.data.toString(),
                              ),
                            )
                                : null;
                          },

                          child: Text(AppLocalizations.of(context)!.signIn),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
