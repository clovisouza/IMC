import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imc/ui/Android/pages/home.page.dart';

class MyMaterialApp extends StatelessWidget{
@override
Widget build(BuildContext context){
 return  MaterialApp(
      title: 'Imc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(        
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }

}

