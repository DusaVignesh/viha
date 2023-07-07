import 'package:basicapp/home-screen.dart';
import 'package:get/get.dart';

const String home = "/";
List<GetPage> pages = [
  GetPage(
    name: home,
    page: () => HomeScreen(),
  ),
];
