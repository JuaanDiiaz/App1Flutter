import 'package:flutter/material.dart';
import 'package:flutter_application_2/themes/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;
   
  const CustomCardType2({super.key, required this.imageUrl, this.name});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)) ,
      shadowColor: AppTheme.primaryColor.withOpacity(.5),
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 200)
            ),
          if(name != null)
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(name!)
            ),
        ]
      ),
    );
  }
}

