
import 'package:get/get.dart';



import '../screen/Sanptips.dart';
import '../screen/community.dart';
import '../screen/imagepicker.dart';




class scannercontroller extends GetxController {
  


  Future gotosnaptips() async
  {
    Get.to(snap_tips());
  }



  Future gotofinall() async
  {
   Get.to(imagepicer_screen());
  }

  Future gotocommunity() async
  {
    Get.to(share());
  }


}
mixin XFile {

}

class File {
  File(String path);
}