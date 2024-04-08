import 'package:flutter/material.dart';
import 'package:flutter_application_2/router/app_routes.dart';
import 'package:flutter_application_2/themes/app_theme.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const CardScreen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.generateRoute,
      theme : AppTheme.darkTheme,
    );
  }
}