import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:components_flutter/routes/app.route.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const AlertScreen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRputes(),
      // onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
    );
  }
}
