import 'package:call_agent/theme/app_dimensions.dart';
import 'package:flutter/material.dart';

import 'add_contact/add_form.dart';

class AddContact extends StatelessWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppDimensions.spacingNarrow),
      child: const AddForm(),
    );
  }
}
