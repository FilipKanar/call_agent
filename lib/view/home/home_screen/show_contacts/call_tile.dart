import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../bloc/database/database_bloc.dart';
import '../../../../data/model/connection.dart';
import '../../../../theme/app_colors.dart';
import '../../../../theme/app_dimensions.dart';
import 'connection_view/connection_view.dart';

class ConnectionTile extends StatelessWidget {
  final Connection connection;

  const ConnectionTile(this.connection, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spacingNarrow),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: AppColors.primary)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: SelectableText(
                            '${AppLocalizations.of(context).titleName}:'),
                      ),
                      Expanded(child: SelectableText(connection.title)),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SelectableText(
                            '${AppLocalizations.of(context).description}:'),
                      ),
                      Expanded(
                          child: SelectableText(
                            connection.description,
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SelectableText(
                            '${AppLocalizations.of(context).phoneNumber}:'),
                      ),
                      Expanded(child: SelectableText(connection.phoneNumber)),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => BlocProvider.of<DatabaseBloc>(context)
                      .databaseService
                      .deleteCall(connection: connection),
                ),
                /*TODO IconButton(
                  icon: Icon(Icons.call),
                  onPressed: () {
                  },
                ),*/
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConnectionView(
                          connection,
                        ),
                      ),
                    );
                  },
                  child: const Text('Show'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
