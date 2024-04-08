import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({super.key});

  void myDialogIos(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text('Alerta'),
          content: const Column(
            children:  [
              Text('Este es el contenido de la alerta'),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            CupertinoDialogAction(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar')
            ),
            CupertinoDialogAction(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: const Text('Aceptar')
            ),
          ],
        );
      }
    );
  }

  void myDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context){
        return AlertDialog(
          title: const Text('Alerta'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children:  [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 20,),
              FlutterLogo(size: 100,)
            ],
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar')
            ),
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: const Text('Aceptar')
            ),
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed: () => !Platform.isAndroid ? myDialogIos(context) : myDialogAndroid(context), 
          child: const Text('Mostrar alerta')
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: const Icon(Icons.close),
      )
    );
  }
}