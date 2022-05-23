import 'package:components_flutter/models/models.dart';
import 'package:components_flutter/pages/pages.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'HomeScreen';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'HomeScreen',
        name: 'Home screen',
        screen: const HomeScreen(),
        iconData: Icons.home),
    MenuOption(
        route: 'ListViewScreen',
        name: 'List View',
        screen: const ListViewScreen(),
        iconData: Icons.list),
    MenuOption(
        route: 'ListViewScreenSeparetor',
        name: 'List View Separator',
        screen: const ListViewScreenSeparetor(),
        iconData: Icons.settings_ethernet_rounded),
    MenuOption(
        route: 'AlertScreen',
        name: 'Alert',
        screen: const AlertScreen(),
        iconData: Icons.railway_alert_rounded),
    MenuOption(
        route: 'CardScreen',
        name: 'Cards',
        screen: const CardScreen(),
        iconData: Icons.card_giftcard_rounded),
    MenuOption(
        route: 'AvatarScreen',
        name: 'Avatars',
        screen: const AvatarScreen(),
        iconData: Icons.supervised_user_circle_rounded),
    MenuOption(
        route: 'AnimatedScreen',
        name: 'Animaciones :)',
        screen: const AnimatedScreen(),
        iconData: Icons.animation_sharp),
    MenuOption(
        route: 'InputsScreen',
        name: 'Text inputs',
        screen: const InputsScreen(),
        iconData: Icons.input_sharp),
    MenuOption(
        route: 'SliderScreen',
        name: 'Slider screen ',
        screen: const SliderScreen(),
        iconData: Icons.sledding),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRputes() {
    Map<String, Widget Function(BuildContext)> appRputes = {};

    for (final option in menuOptions) {
      appRputes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRputes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'HomeScreen': (BuildContext context) => const HomeScreen(),
  //   'ListViewScreen': (BuildContext context) => const ListViewScreen(),
  //   'ListViewScreenSeparetor': (BuildContext context) =>
  //       const ListViewScreenSeparetor(),
  //   'AlertScreen': (BuildContext context) => const AlertScreen(),
  //   'CardScreen': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) =>
      MaterialPageRoute(builder: (context) => const AlertScreen());
}
