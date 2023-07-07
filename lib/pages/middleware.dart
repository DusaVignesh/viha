import 'package:basicapp/custom/bottom-navigation.dart';
import 'package:flutter/material.dart';

class Middleware extends StatelessWidget {
  const Middleware({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('middleware'),
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
