import 'package:flutter/material.dart';
import 'package:flutter_application_2/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return   Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album, color: AppTheme.primaryColor),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Aqui estamos con la descripcion de la tarjeta que quiero que vean para tener una idea de lo que quiero mostrarles.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancelar')
                ),
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Ok')
                ),
              ],
            ),
          )
        ],
      ),
      
    );
  }
}