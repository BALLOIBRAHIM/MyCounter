import 'package:get/get.dart';
import 'package:my_islam_counter/models/zikr.dart';

class StoreController extends GetxController {
  final zikrItem = Zikr();
  final zikrTitle = ''.obs;
  final zikrNbr = 0.obs;
  //change zikr title
  void updateZikrTitle(String title) {
    zikrTitle(title);
  }

  //change zikr count'number
  void plusZikrNumber() {
    zikrNbr(zikrNbr.value + 1);
  }

  void minusZikrNumber() {
    if (zikrNbr.value == 0) {
      zikrNbr(0);
    } else {
      zikrNbr(zikrNbr.value - 1);
    }
  }

  //save zikr model
  void updateZikrModel() {
    zikrItem.title = zikrTitle.value;
    zikrItem.nbr = zikrNbr.value.toString();
  }
}
