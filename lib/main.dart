import 'package:basicapp/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: home,
      getPages: pages,
    ),
  );
}
