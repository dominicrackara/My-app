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
    return CupertinoApp(
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
          activeIcon: SvgPicture.asset("assets/svg/home_icon.svg",
          colorFilter: const ColorFilter.mode(
            CupertinoColors.systemGrey, BlendMode.srcIn)
            icon: SvgPicture.asset("assets/svg/home_icon.svg",
            colorFilter: const ColorFilter.mode(
               CupertinoColors.systemGrey, BlendMode.srcIn)),
            label:"Home"),
          icon: Icon(CupertinoIcons.home), label:"Home"),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset("assets/svg/home_icon.svg",
          colorFilter: const ColorFilter.mode(
            CupertinoColors.systemGrey, BlendMode.srcIn)
            icon: SvgPicture.asset("assets/svg/home_icon.svg",
            colorFilter: const ColorFilter.mode(
               CupertinoColors.systemGrey, BlendMode.srcIn)),
            label:"Home"),
          icon: Icon(CupertinoIcons.home), label:"Home"),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset("assets/svg/home_icon.svg",
          colorFilter: const ColorFilter.mode(
            CupertinoColors.systemGrey, BlendMode.srcIn)
            icon: SvgPicture.asset("assets/svg/home_icon.svg",
            colorFilter: const ColorFilter.mode(
               CupertinoColors.systemGrey, BlendMode.srcIn)),
            label:"Home"),
          icon: Icon(CupertinoIcons.home), label:"Home"),
       BottomNavigationBarItem(
          activeIcon: SvgPicture.asset("assets/svg/home_icon.svg",
          colorFilter: const ColorFilter.mode(
            CupertinoColors.systemGrey, BlendMode.srcIn)
            icon: SvgPicture.asset("assets/svg/home_icon.svg",
            colorFilter: const ColorFilter.mode(
               CupertinoColors.systemGrey, BlendMode.srcIn)),
            label:"Home"),
          icon: Icon(CupertinoIcons.home), label:"Home"),
          tabBuilder: (context, index)
          
          
     
      ]
      
      items),);
      tabBuilder: (context, index){
      switch (index){
        case 0:
           return HomeScreen();
        case 1:
           return ChatScreen();
        case 2:
           return DownloadSreen();
        case 3:
           return SettingScreen();
        default:


      }
    } 
  }
}
