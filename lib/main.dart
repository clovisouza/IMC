import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:imc/ui/Android/material-app.dart';



void main() => Platform.isIOS ? runApp(MyMaterialApp()): runApp(MyMaterialApp());

//void main() {runApp(MyCupertinoApp());}


