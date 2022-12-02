import 'package:flutter/material.dart';

import '../../../../data/model/connection.dart';
import 'call_tile.dart';

class ConnectionList extends StatelessWidget {
  final List<Connection> connectionList;
  const ConnectionList({Key? key, required this.connectionList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: connectionList.map((e) => ConnectionTile(e)).toList(),
    );
  }
}
