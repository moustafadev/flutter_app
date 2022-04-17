import 'package:flutter/material.dart';
import 'package:get/get.dart';

class a extends StatelessWidget {
  const a({ Key key }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(child: Container(child: Text('output:${Get.arguments.toString()}'
      
      
      ,),)),
    );
  }


}