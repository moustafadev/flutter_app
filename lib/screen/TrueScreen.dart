

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'dart:io';
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../controller/scancontroller.dart';





class true_screen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
      child: SingleChildScrollView(
          child: Container(

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
                              height: 20 ,
                              child: IconButton(icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,),
                                onPressed: ()
                                {
                                  controller.gotofinall();
                                },
                              ),
                            ),

                            Container(
                              alignment: Alignment.topLeft,
                              height: 20,
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
                Container(

                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                      color: Colors.white,
                      border: Border.all(color: Colors.white)),
                  height:200,
                  width: double.infinity,

                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Row
                          (
                          children:
                          [
                            Text('Sugercane',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(width:7 ,),
                            Text('a speies of',style: TextStyle(fontSize: 20,color: Colors.grey),),
                            SizedBox(width:7 ,),
                            Text('Suger cane',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

                          ],
                        ),
                        SizedBox(height: 10 ,),
                        Text('Also known as: ',style: TextStyle(fontSize: 20,color: Colors.grey), ),

                        SizedBox(height: 10, ),
                        Text('. Suger Cane',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                        SizedBox(height: 10,),
                        Text('. Plume Grass ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold), ),

                        SizedBox(height: 10,),
                        Row(
                          children:
                          [
                            Text('Botaniacal name:',style: TextStyle(fontSize: 20,color: Colors.grey), ),
                            SizedBox(width:7 ,),
                            Text('Scacharum officinarum',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold), ),


                          ],
                        )

                      ],
                    ),
                  ),


                ),


                SizedBox(height: 15,),

                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.zero,
                      color: Colors.white,
                      border: Border.all(color: Colors.white)),
                  height:350,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column
                      (
                      children:
                      [
                        Row(
                          children:
                          [
                            Icon(Icons.photo,color: Colors.grey,)
                            ,Text('Images of sugercane',style: TextStyle(fontSize: 17,color: Colors.grey),)
                          ],
                        ),
                        SizedBox(height: 15,),
                        Column(
                          children:
                          [
                            Row(
                              children:
                              [

                                Container(
                                  height: 120,
                                  width: 190,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:AssetImage('image/IMG-20220201-WA0019.jpg'),
                                      )
                                  ),

                                ),
                                SizedBox(width: 10,),
                                Container(
                                  height: 120,
                                  width: 190,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:AssetImage('image/IMG-20220201-WA0019.jpg'),)
                                  ),
                                ),
                              ],

                            ),
                            //SizedBox(height: 10,),
                            Row(
                              children:
                              [

                                Container(
                                  height: 120,
                                  width: 190,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:AssetImage('image/IMG-20220201-WA0019.jpg'),)
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  height: 120,
                                  width: 190,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:AssetImage('image/IMG-20220201-WA0019.jpg'),)
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),


                SizedBox(height: 15,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.zero,
                      color: Colors.white,
                      border: Border.all(color: Colors.white)),
                  height:250,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column
                      (
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Row
                          (

                          children:
                          [
                            Icon(Icons.contact_support_outlined),
                            SizedBox(width: 7,),
                            Text('People Often Ask' ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                          ],
                        ),
                        SizedBox(height: 15,),
                        Text('What is the economic value of sugercane?',style: TextStyle(fontSize: 20),)

                        ,SizedBox(height: 10,),
                        Text('How is saccharum barberi different from sacccharum officinarum?',style: TextStyle(fontSize: 20),)
                        , SizedBox(height: 10,),
                        Text('Is sugercane a fruit?',style: TextStyle(fontSize: 20),),
                        SizedBox(height: 10,),
                        Text('Is sugercane a perenial or annual ?',style: TextStyle(fontSize: 20),),
                        SizedBox(height: 10,),
                        Text('When does sugercane bloom?',style: TextStyle(fontSize: 20),),



                      ],
                    ),
                  ),
                ),


                SizedBox(height: 15,),

                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.zero,
                      color: Colors.white,
                      border: Border.all(color: Colors.white)),
                  height:220,
                  width: double.infinity,

                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column
                      (
                      children:
                      [
                        Row
                          (
                          children:
                          [
                            Icon(Icons.description_outlined)
                            ,SizedBox(width: 7,),
                            Text('Description',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),)
                          ],
                        ),
                        SizedBox(height: 15,),
                        Text
                          (
                          'Sugercane (Saccharum officinarum) is a suger-rich grass species native to New Guinea. Sugercane is commercially cultivated around the world to make suger and ethanol. In ancient times,people woulf chew this plants to extract sweet juice from the stalk. ',style: TextStyle(fontSize: 20,color: Colors.grey),
                        ),



                      ],
                    ),
                  ),
                ),

                SizedBox(height: 15,),

                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.zero,
                      color: Colors.white,
                      border: Border.all(color: Colors.white)),
                  height:330,
                  width: double.infinity,
                  child:  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:
                      [
                        Row(
                          children:
                          [
                            Icon(Icons.preview),
                            SizedBox(width: 10,),
                            Text('Characteristic',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),)
                          ],

                        ),
                        SizedBox(height: 15,),

                        Row(
                          children:
                          [
                            Container(
                              height: 250,
                              child:  Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:
                                [
                                  Text('Plants Type',style: TextStyle(fontSize: 20,color: Colors.grey)),
                                  SizedBox(height: 15,),
                                  Text('Lifespan',style: TextStyle(fontSize: 20,color: Colors.grey)),
                                  SizedBox(height: 15,),
                                  Text('Bloom Time',style: TextStyle(fontSize: 20,color: Colors.grey)),
                                  SizedBox(height: 15,),
                                  Text('Plants Height',style: TextStyle(fontSize: 20,color: Colors.grey)),
                                  SizedBox(height: 15,),
                                  Text('Spread',style: TextStyle(fontSize: 20,color: Colors.grey)),
                                  SizedBox(height: 15,),
                                  Text('Habitat',style: TextStyle(fontSize: 20,color: Colors.grey)),
                                ],

                              ),
                            ),
                            SizedBox(width: 15,),

                            Expanded
                              (
                              child: Container(
                                height: 250,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:
                                  [
                                    Text('Herb',style: TextStyle(fontSize: 20,)),
                                    SizedBox(height: 15,),
                                    Text('Perennial',style: TextStyle(fontSize: 20,)),
                                    SizedBox(height: 15,),
                                    Text('Winter',style: TextStyle(fontSize: 20,)),
                                    SizedBox(height: 15,),
                                    Text('5 feet to 8 feet',style: TextStyle(fontSize: 20,)),
                                    SizedBox(height: 15,),
                                    Text('0 inch',style: TextStyle(fontSize: 20,)),
                                    SizedBox(height: 15,),
                                    Text('Marshes,Stream Banks,Sand duns',style: TextStyle(fontSize: 20,)),
                                  ],
                                ),
                              ),
                            ),




                          ],
                        )







                      ],
                    ),
                  ),

                ),


                SizedBox(height: 15,),

                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.zero,
                      color: Colors.white,
                      border: Border.all(color: Colors.white)),
                  height:350,
                  width: double.infinity,

                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children:
                      [
                        Row(
                          children:
                          [
                            Icon(Icons.rice_bowl_outlined),
                            SizedBox(width: 10,),
                            Text('Conditions Requirment',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),)
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children:
                          [
                            Icon(Icons.wb_sunny,color: Colors.teal,),
                            SizedBox(width: 10,),
                            Column(
                              children:
                              [
                                Text('Sunlight',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Text('Full sun',style: TextStyle(fontSize: 20,color: Colors.grey),)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children:
                          [
                            Icon(Icons.device_thermostat ,color: Colors.teal,),
                            SizedBox(width: 10,),
                            Column(

                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Text('Hardiness',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Text('-7 C',style: TextStyle(fontSize: 20,color: Colors.grey),)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),

                        Row(
                          children:
                          [
                            Icon(Icons.cake_outlined,color: Colors.teal,),
                            SizedBox(width: 10,),

                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:
                                [


                                  Text('Soil',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold), ),

                                  SizedBox(height: 10,),

                                  Text('Clay,loam,sand,well drained,slighty acidic,neutral,slighty alkaline',style: TextStyle(fontSize: 20,color: Colors.grey), )
                                ],
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children:
                          [
                            Icon(Icons.location_on ,color: Colors.teal,),
                            SizedBox(width: 10,),
                            Column(

                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Text('Hardiness Zone',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Text('9',style: TextStyle(fontSize: 20,color: Colors.grey),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 15,),

                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.zero,
                      color: Colors.white,
                      border: Border.all(color: Colors.white)),
                  height:320,
                  width: double.infinity,

                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children:
                      [
                        Row(
                          children:
                          [
                            Icon(Icons.my_library_books_outlined),
                            SizedBox(width: 10,),
                            Text('Care Guide',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),)

                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children:
                          [
                            Icon(Icons.water_damage,color: Colors.teal,),

                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:
                                [
                                  Text('Water',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),)  ,
                                  SizedBox(height:10 ,),
                                  Text('Average water needs,watering when the top 1.2 inch ofsoil has dried out',style: TextStyle(fontSize: 20,color: Colors.grey),),
                                ],
                              ),
                            )


                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children:
                          [
                            Icon(Icons.water_damage,color: Colors.teal,),

                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:
                                [
                                  Text('Fertilization',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),)  ,
                                  SizedBox(height:10 ,),
                                  Text('Fertilization once every 2-3 months during the growing season',style: TextStyle(fontSize: 20,color: Colors.grey),),
                                ],
                              ),
                            ),



                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children:
                          [
                            Icon(Icons.water_damage,color: Colors.teal,),

                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:
                                [
                                  Text('Pruning',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),)  ,
                                  SizedBox(height:10 ,),
                                  Text('Trim the dead ,dieased,overgrown branches in winter',style: TextStyle(fontSize: 20,color: Colors.grey),),
                                ],
                              ),
                            )


                          ],
                        ),



                      ],
                    ),
                  ),

                ),





                GetBuilder<scannercontroller>(
                  init: scannercontroller(),
                  builder: (controller)=> Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:
                      [
                        Container(
                          width: 100,
                          height: 50,


                          child: RaisedButton(onPressed:()


                          {
                            controller.gotofinall();
                          },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),

                            color: Colors.teal,
                            child: Icon(Icons.camera_alt,color: Colors.white,),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 100,
                          height: 50,


                          child: RaisedButton(onPressed:()


                          {
                            controller.gotocommunity();
                          },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),

                            color: Colors.teal,
                            child: Icon(Icons.share_rounded,color: Colors.white,),
                          ),
                        ),
                      ],),
                  ),
                ),
                SizedBox(height: 15,)



              ],),
          ),
        ),
      )
    );
  }
}