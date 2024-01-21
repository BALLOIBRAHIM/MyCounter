import 'package:get/get.dart';
import 'controllers/StoreController.dart';

class MyAppControllerBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => StoreController());
  }
}
