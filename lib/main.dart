import 'package:flutter/material.dart';
import 'package:flutter_app/screen/imagepicker.dart';
import 'package:get/get.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key  key}) : super(key: key);




  @override

  Widget build(BuildContext context) {
    return GetMaterialApp(

    home:imagepicer_screen(),
    );
  }
}
