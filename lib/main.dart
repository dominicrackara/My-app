import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/screens/core/chat.dart';
import 'package:myapp/screens/core/downloads.dart';
import 'package:myapp/screens/core/home.dart';
import 'package:myapp/screens/core/settings.dart';

void main() {
  runApp(const OurApp());
}

class OurApp extends StatelessWidget {
  const OurApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: MyTabController(),
    );
  }
}

class MyTabController extends StatefulWidget {
  const MyTabController({super.key});

  @override
  State<MyTabController> createState() => _MyTabControllerState();
}

class _MyTabControllerState extends State<MyTabController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/home_icon.svg",
                // ignore: deprecated_member_use
                color: CupertinoColors.systemGrey,
              ),
              activeIcon: SvgPicture.asset(
                "assets/svg/home_icon.svg",
                // ignore: deprecated_member_use
                color: const Color.fromARGB(255, 18, 120, 229),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/chat_icon.svg",
                // ignore: deprecated_member_use
                color: CupertinoColors.systemGrey,
              ),
              activeIcon: SvgPicture.asset(
                "assets/svg/chat_icon.svg",
                // ignore: deprecated_member_use
                color: CupertinoColors.activeBlue,
              ),
              label: "Chat"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/download_icon.svg",
                // ignore: deprecated_member_use
                color: CupertinoColors.systemGrey,
              ),
              activeIcon: SvgPicture.asset(
                "assets/svg/download_icon.svg",
                // ignore: deprecated_member_use
                color: CupertinoColors.activeBlue,
              ),
              label: "Download"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/setting_icon.svg",
                // ignore: deprecated_member_use
                color: CupertinoColors.systemGrey,
              ),
              activeIcon: SvgPicture.asset(
                "assets/svg/setting_icon.svg",
                // ignore: deprecated_member_use
                color: CupertinoColors.activeBlue,
              ),
              label: "Setting"),
        ]),
        tabBuilder: (context, index) {
          // tabBuilder: (context, index){
          switch (index) {
            case 0:
              return const HomeScreen();
            case 1:
              return const ChatScreen();
            case 2:
              return const DownloadSreen();
            case 3:
              return const SettingScreen();
            default:
          }
        });
  }
}
