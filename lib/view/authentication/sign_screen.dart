import 'package:call_agent/theme/app_dimensions.dart';
import 'package:call_agent/view/authentication/sign_screen_widgets/sign_form.dart';
import 'package:flutter/material.dart';

import 'sign_screen_widgets/display_logo.dart';


class SignScreen extends StatelessWidget {
  const SignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.spacingNarrow),
          child: Column(
            children: const [
              DisplayLogo(),
              SignForm(),
            ],
          ),
        ),
      ),
    );
  }
}
