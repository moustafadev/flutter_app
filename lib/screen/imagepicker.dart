import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/screen/details_screen.dart';

import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:tflite/tflite.dart';
import 'package:get/get.dart';

import '../controller/layout_controller.dart';
import 'FalseScreen.dart';
import 'Sanptips.dart';
import 'a.dart';
import 'not_found_screen.dart';

class imagepicer_screen extends StatefulWidget {
  const imagepicer_screen({Key key}) : super(key: key);

  @override
  State<imagepicer_screen> createState() => _imagepicer_screenState();
}

class _imagepicer_screenState extends State<imagepicer_screen> {
  final ImagePicker _picker = ImagePicker();

  List<PickedFile> _imageFilelist = [];
  bool _loading = true;
  List _output;
  var itemcount;

  @override
  void initState() {
    //initS is the first function that is executed by default when this class is called
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    //dis function disposes and clears our memory
    super.dispose();
  }

  classifyImage(_imageFilelist) async {
    //this function runs the model on the image
    var output = await Tflite.runModelOnImage(
      path: _imageFilelist,
      numResults: 36,
      //the amout of categories our neural network can predict
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _output = output;
      _loading = false;
    });
  }

  loadModel() async {
    //this function loads our model
    await Tflite.loadModel(
        model: 'assets/plant_scope_model_tflite.tflite',
        labels: 'assets/labels.txt');
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LayoutController>(
      init: LayoutController(),
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.grey[10],
            child: Column(
              children: [
                Container(
                  height: 140,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 40),
                        child: Center(
                            child: Text(
                          'Plants Identification',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(50)),
                    color: Colors.teal,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: new EdgeInsets.all(20.0),
                  margin: new EdgeInsets.symmetric(horizontal: 30.0),
                  width: 450,
                  height: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 100,
                            child: RaisedButton(
                              onPressed: () {
                                selectImages();
                                setState(() {});
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 30,
                              ),
                              color: Colors.teal,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            child: RaisedButton(
                              onPressed: () {
                                selectImagesfromgallery();
                                setState(() {});
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              child: Icon(
                                Icons.photo,
                                color: Colors.white,
                                size: 30,
                              ),
                              color: Colors.teal,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      _loading == null
                          ? null
                          : Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.all(0.2),
                                  child: GridView.builder(
                                      itemCount: _imageFilelist.length,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2),
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Image.file(
                                            File(_imageFilelist[index].path),
                                            fit: BoxFit.fill,
                                          ),
                                        );
                                      }))),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: 120,
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        scancamera(controller);
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: const Text(
                      'Start Scan',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void selectImages() async {
    var selectedImages = await _picker.getImage(source: ImageSource.camera);

    if (selectedImages.path.isNotEmpty) {
      _imageFilelist.add(selectedImages);
    }
    setState(() {});
  }

  void selectImagesfromgallery() async {
    PickedFile selectedImages =
        await _picker.getImage(source: ImageSource.gallery);

    if (selectedImages.path.isNotEmpty) {
      _imageFilelist.add(selectedImages);
    }
    setState(() {});
  }

  void scancamera(LayoutController controller) async {

    if (_imageFilelist.length != 4) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => snap_tips()),
      );
    }
    if (_imageFilelist.length == 4) {
      classifyImage(_imageFilelist[0].path);
      Future.delayed(const Duration(seconds: 3), () {
        print('<<<<<<<<<<$_output');
        if(_output.isNotEmpty){
          controller.search(_output[0]['label']);
          if(controller.searchField.isNotEmpty) {
            Get.to(DetailsScreen(details: controller.searchField, index: 0));
          } else {
            Get.to(const false_screen());
          }
        }else{
          Get.to(const false_screen());
        }
      });
    }

  }
}
