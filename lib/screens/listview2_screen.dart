import 'package:flutter/material.dart';
import 'package:flutter_application_2/themes/app_theme.dart';

class ListView2Screen extends StatelessWidget {

  final options = const ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis', 'Siete', 'Ocho', 'Nueve', 'Diez', 'Once', 'Doce', 'Trece', 'Catorce', 'Quince', 'Dieciseis', 'Diecisiete', 'Dieciocho', 'Diecinueve', 'Veinte'];
   
  const ListView2Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 2'),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        interactive: true,
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(options[index]),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color:AppTheme.primaryColor),
              onTap: () {
                //print(options[index]);
              },
            );
          }, 
          separatorBuilder: (_, __) => const Divider(), 
          itemCount: options.length
        ),
      )
    );
  }
}