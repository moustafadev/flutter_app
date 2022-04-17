import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:flutter_app/controller/service/database/local_data_json.dart';
import 'package:get/get.dart';
import '../../model/detailsModel.dart';



class LayoutController extends GetxController {

  List<List<DetailsModel>> fullItems= [];
  List<DetailsModel> searchField= [];
  final DetailsDataServes _detailsDataServes = DetailsDataServes();

  bool _searchDone = false;
  bool get searchDone => _searchDone;

  final controllerSearch = TextEditingController();

  LayoutController(){
    getFullItems();
  }


  search(String query){
    print(query);
    searchField = [];
    for(int i=0;i<fullItems.length;i++) {
          final searchItem = fullItems[i].where((filter){
            final title = filter.name.toLowerCase();
            final index = query.toLowerCase();
            return title.contains(index);
          }).toList();
          searchItem.forEach((element) {
            searchField.add(element);
          });
      }
    if(query != "") {
      _searchDone = true;
    } else {
      _searchDone = false;
      searchField=[];
    }
    update();
  }


  void getFullItems() async{
    fullItems=[];
    await _detailsDataServes.detailsDataPlant().then((value) {
      for (var element in value) {
        fullItems.add(element);
      }
    });
    update();
    // print(fullItems);
  }



  void printObject(Object object) {
    // Encode your object and then decode your object to Map variable
    Map jsonMapped = json.decode(json.encode(object));

    // Using JsonEncoder for spacing
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');

    // encode it to string
    String prettyPrint = encoder.convert(jsonMapped);

    // print or debugPrint your object
    debugPrint(prettyPrint);
  }

}