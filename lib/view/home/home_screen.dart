import 'package:call_agent/view/home/home_screen/add_contact.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          AddContact(),
        ],
      ),
    );
  }
}
