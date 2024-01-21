import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThermeController extends GetxController {
  final _storageHandle = GetStorage();
  final _themeKey = 'isDarkMode';

  // load value form _themeKey
  bool _myThemeLoader() => _storageHandle.read(_themeKey) ?? false;
  //get a current themeMode
  ThemeMode get theme => _myThemeLoader()? ThemeMode.dark:ThemeMode.light;
  //save theme
  void saveTheme(bool isDarkMode) => _storageHandle.write(_themeKey, isDarkMode);
  //change theme
  void changeTheme(ThemeData theme) => Get.changeTheme(theme);
  //change themeMode
  void changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);

}
