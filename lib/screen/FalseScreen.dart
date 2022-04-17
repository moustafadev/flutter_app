

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

import '../controller/scancontroller.dart';





class false_screen extends StatelessWidget {
  const false_screen({ Key key }) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child:SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Container(
            color: Colors.grey[200],
            child: Column(
              children:
              [
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 460,
                  color: Colors.white,
                  child: Column(

                    children:
                    [
                      Container(
                        height: 300,
                        width: double.infinity,

                        decoration: BoxDecoration(

                            image: DecorationImage(
                              image: AssetImage('image/IMG-20220201-WA0019.jpg'),
                              fit: BoxFit.cover,
                            )

                        ),
                        child:Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child:  GetBuilder<scannercontroller>(
                              init: scannercontroller(),
                              builder: (controller)=>Row
                                (mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:
                                [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: 10,
                                    child: IconButton(icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,),
                                      onPressed: ()
                                      {
                                        controller.gotofinall();
                                      },
                                    ),
                                  ),

                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: 10,
                                    child: IconButton(icon: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                                      onPressed: ()
                                      {
                                        controller.gotofinall();
                                      },
                                    ),
                                  )

                                ],
                              ),
                            )
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:
                        [
                          Icon(
                            Icons.error_rounded,color: Colors.red,
                          ),
                          SizedBox(width: 7,),
                          Text('No plants found', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

                        ],
                      ),
                      SizedBox(height: 15,),




                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text('You can check the tips below and try to get a clear shot of the plant',style: TextStyle(fontSize: 20),),
                      ),





                    ],
                  ),
                ),

                SizedBox(height: 20,),
                Container(
                  color: Colors.white,
                  child: Column(
                    children:
                    [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children:
                          [
                            Icon(Icons.help_center_rounded,color: Colors.teal,),
                            SizedBox(width: 10,),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Text('Tips for taking pictures',style: TextStyle(
                                  fontSize: 20,fontWeight: FontWeight.bold
                              ),),
                            ),

                          ],
                        ),
                      ) ,
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(

                          width: double.infinity,
                          child: Column(
                            children:
                            [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children:
                                [
                                  Icon(Icons.looks_one,color: Colors.teal),
                                  SizedBox(width: 5.0,),
                                  Expanded(child: Text('Place your plants at the center of the frame.Steer clear of gloomy , overly bright or blurry images',style: TextStyle(fontSize: 20.0, ),)),

                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 200,
                                    width: 330,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image:AssetImage('image/IMG_20220204_230328.jpg'),)
                                    ),
                                  ),
                                ],
                              )
                            ],),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                            [
                              Icon(Icons.looks_two,color: Colors.teal),
                              SizedBox(width: 5.0,),
                              Expanded(child: Text('If the plants is too big to fit in the frame,take a hoto of its leaves or flowers',style: TextStyle(fontSize: 20.0,),)),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 200,
                                width: 330,
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
                              Icon(Icons. looks_3,color: Colors.teal),
                              SizedBox(width: 5.0,),
                              Expanded(child: Text('Don''t get your camera too closeto the plants. Make sure to keep at least one whole leaf or flower in focus ',style: TextStyle(fontSize: 20.0,),)),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 200,
                                width: 330,
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
                                Icon(Icons. looks_4,color: Colors.teal,),
                                SizedBox(width: 5.0,),
                                Expanded(child: Text('if  your plants has flowers,foucs on them',style: TextStyle(fontSize: 20.0,),)),
                              ]
                          ),
                          Column(
                            children: [
                              Container(
                                height: 200,
                                width: 330,
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
                                Icon(Icons. looks_5,color: Colors.teal),
                                SizedBox(width: 5.0,),
                                Expanded(child: Text('Upload up to 4 photos of plants ',style: TextStyle(fontSize: 20.0,),)),
                              ]
                          ),
                          Column(
                            children: [
                              Container(
                                height: 200,
                                width: 330,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image:
                                    AssetImage('image/IMG_20220204_230532.jpg') )),),
                            ],
                          )
                        ],),
                      ),

                      GetBuilder<scannercontroller>(
                        init: scannercontroller(),
                        builder: (controller)=>   Container(
                          width: 270,
                          height: 50,


                          child: MaterialButton(onPressed:()


                          {
                            controller.gotofinall();
                          },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),

                            color: Colors.teal,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:
                              [
                                Icon(Icons.camera_alt_outlined,color: Colors.white,),
                                SizedBox(width: 7,),
                                Text('Retake',style: TextStyle(fontSize: 15,color: Colors.white),),
                                SizedBox(height: 10,)
                              ],
                            ),
                          ),

                        ),
                      ),
                      SizedBox(height: 15,)

                    ],
                  ),


                ),

              ],

            ),
          ),
        ),
      ),
      )
    );
  }
}