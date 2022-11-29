import 'package:call_agent/theme/app_dimensions.dart';
import 'package:flutter/material.dart';

class SignForm extends StatelessWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppDimensions.spacingNarrow),
            child: TextField(
              onChanged: (email) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppDimensions.spacingNarrow),
            child: TextField(
              obscureText: true,
              onChanged: (email) {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){}, child: const Text('Sign Up',),),
              ElevatedButton(onPressed: (){}, child: const Text('Sign In'),),
            ],
          ),
        ],
      ),
    );
  }
}
