
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


import 'dart:io';
import 'package:get/get.dart';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

import '../controller/scancontroller.dart';


class snap_tips extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(leading: GetBuilder<scannercontroller>(
                  init: scannercontroller(),
                  builder: (controller)=>IconButton(icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.teal,),
                      onPressed: ()
                      {
                         controller.gotofinall();
                      },), ),
                      title: Text('Snap Tips',style: TextStyle(fontSize: 20,color: Colors.black),),
                      backgroundColor: Colors.white,elevation: 0.2,),

      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              

              //  SizedBox(height: ,),
              Container(
                color: Colors.white,
                child: Column(
                  children:
                  [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(children:
                      [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children:
                          [
                            Icon(Icons.looks_one,color: Colors.teal,),
                            SizedBox(width: 5.0,),
                            Expanded(child: Text('Place your plants at the center of the frame.Steer clear of gloomy , overly bright or blurry images',style: TextStyle(fontSize: 20.0, color: Colors.black),)),

                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 300,
                              decoration:BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('image/IMG_20220204_230328.jpg')
                                )
                              )
                            ),
                          ],
                        )
                      ],),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                          [
                            Icon(Icons.looks_two,color:Colors.teal),
                            SizedBox(width: 5.0,),
                            Expanded(child: Text('If the plants is too big to fit in the frame,take a hoto of its leaves or flowers',style: TextStyle(fontSize: 20.0,color: Colors.black),)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 300,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image:
                                  AssetImage('image/IMG_20220204_230406.jpg') )),),
                          ],
                        )
                      ],),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                          [
                            Icon(Icons. looks_3,color:Colors.teal),
                            SizedBox(width: 5.0,),
                            Expanded(child: Text('Don''t get your camera too closeto the plants. Make sure to keep at least one whole leaf or flower in focus ',style: TextStyle(fontSize: 20.0,color: Colors.black),)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 300,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image:
                                  AssetImage('image/IMG_20220204_230444.jpg') )),),
                          ],
                        )
                      ],),
                    ),




                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                            [
                              Icon(Icons. looks_4,color:Colors.teal),
                              SizedBox(width: 5.0,),
                              Expanded(child: Text('if  your plants has flowers,foucs on them',style: TextStyle(fontSize: 20.0,color: Colors.black),)),
                            ]
                        ),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 300,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image:
                                  AssetImage('image/IMG_20220204_230508.jpg') )),),
                          ],
                        )
                      ],),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                            [
                              Icon(Icons. looks_5,color:Colors.teal),
                              SizedBox(width: 5.0,),
                              Expanded(child: Text('Upload up to 4 photos of plants ',style: TextStyle(fontSize: 20.0,color: Colors.black),)),
                            ]
                        ),
                        Column(
                          children: [
                            Container(
                                height: 200,
                                width: 300,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image:AssetImage('image/IMG_20220204_230532.jpg')


                                    )
                                )
                            )

                          ],
                        )
                      ],),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}