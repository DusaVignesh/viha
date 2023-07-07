import 'package:basicapp/custom/bottom-navigation.dart';
import 'package:flutter/material.dart';

class GroupsChat extends StatelessWidget {
  const GroupsChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('groupchat'),
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
