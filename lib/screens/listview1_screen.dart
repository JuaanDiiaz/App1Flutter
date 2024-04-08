import 'package:flutter/material.dart';
import 'package:flutter_application_2/themes/app_theme.dart';

class ListView1Screen extends StatelessWidget {

  final options = const ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
   
  const ListView1Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 1'),
      ),
      body: ListView(
        children: [
          ...options.map((e) => 
            ListTile(
              title: Text(e),
              trailing: const Icon(Icons.delete, color:AppTheme.primaryColor),
            )
          ),
          // ListTile(
          //   title: Text('Map'),
          // ),
        ],
      )
    );
  }
}