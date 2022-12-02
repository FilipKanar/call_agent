import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddForm extends StatefulWidget {
  const AddForm({Key? key}) : super(key: key);

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Text(AppLocalizations.of(context)!.addNewContact),
          TextFormField(
            onChanged: (title) {},
          ),
          TextFormField(
            onChanged: (website) {},
          ),
          TextFormField(
            onChanged: (phone) {},
          ),
          TextFormField(
            onChanged: (description) {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text(AppLocalizations.of(context)!.add),),
            ],
          )
        ],
      ),
    );
  }
}
