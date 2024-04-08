import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/menu_option.dart';
import 'package:flutter_application_2/screens/screens.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'listView1',
      icon: Icons.list,
      name: 'List View 1',
      screen: const ListView1Screen()
    ),
    MenuOption(
      route: 'listView2',
      icon: Icons.list,
      name: 'List View 2',
      screen: const ListView2Screen()
    ),
    MenuOption(
      route: 'card',
      icon: Icons.credit_card,
      name: 'Card',
      screen: const CardScreen()
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.notifications,
      name: 'Alert',
      screen: const AlertScreen()
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.supervised_user_circle_outlined,
      name: 'Circle avatar',
      screen: const AvatarScreen()
    ),
    MenuOption(
      route: 'animated',
      icon: Icons.play_circle_filled_rounded,
      name: 'Animated',
      screen: const AnimatedScreen()
    ),
    MenuOption(
      route: 'inputs',
      icon: Icons.input_rounded,
      name: 'Text inputs',
      screen: const InputsScreen()
    ),
    MenuOption(
      route: 'slider',
      icon: Icons.slideshow,
      name: 'Slider',
      screen: const SliderScreen()
    ),
    MenuOption(
      route: 'listViewBuilder',
      icon: Icons.list,
      name: 'List View Builder',
      screen: const ListViewBuilderScreen()
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Map<String, WidgetBuilder> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listView1': (BuildContext context) => const ListView1Screen(),
    'listView2': (BuildContext context) => const ListView2Screen(),
    'card': (BuildContext context) => const CardScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
  };
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case 'home':
        return MaterialPageRoute(builder: (_)=> const HomeScreen());
      case 'listView1':
        return MaterialPageRoute(builder: (_)=> const ListView1Screen());
      case 'listView2':
        return MaterialPageRoute(builder: (_)=> const ListView2Screen());
      case 'card':
        return MaterialPageRoute(builder: (_)=> const CardScreen());
      case 'alert':
        return MaterialPageRoute(builder: (_)=> const AlertScreen());
      default:
        return MaterialPageRoute(builder: (_)=> const HomeScreen());
    }
  }
}