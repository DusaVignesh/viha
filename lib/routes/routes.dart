import 'package:basicapp/home-screen.dart';
import 'package:get/get.dart';

import '../windows/primary-chat-window.dart';

const String home = "/";
const String primaryChatWindow = "/primarychatWindow";
List<GetPage> pages = [
  GetPage(
    name: home,
    page: () => HomeScreen(),
  ),
  GetPage(
    name: primaryChatWindow,
    page: () => PrimaryChatWindow(),
  ),
];
