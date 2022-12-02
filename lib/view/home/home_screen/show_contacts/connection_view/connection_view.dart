
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../../data/model/connection.dart';
import '../call_tile.dart';

class ConnectionView extends StatelessWidget {
  final Connection connection;

  const ConnectionView(this.connection, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ConnectionTile(connection),
          Expanded(
              child: WebView(
                initialUrl: connection.website,
                javascriptMode: JavascriptMode.unrestricted,
              )),
        ],
      ),
    );
  }
}
