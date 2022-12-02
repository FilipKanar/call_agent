import 'package:call_agent/view/home/home_screen/show_contacts/call_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../bloc/database/database_bloc.dart';
import '../../../theme/app_text_style.dart';

class ShowContacts extends StatelessWidget {
  const ShowContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppLocalizations.of(context).myClients, style: AppTextStyles.titleButSmaller(),),
        StreamBuilder(
            stream:
            BlocProvider.of<DatabaseBloc>(context).databaseService.userConnections(),
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? ConnectionList(connectionList: snapshot.data!)
                  : Text(AppLocalizations.of(context).emptyMyClients);
            }),
      ],
    );
  }
}
