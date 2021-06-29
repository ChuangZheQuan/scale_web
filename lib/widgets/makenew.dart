import 'package:flutter/material.dart';
import 'package:get/get.dart';

IconButton makenew() {
  if (Get.theme.brightness.toString() == "Brightness.light") {
    return IconButton(
        onPressed: () {
          Get.changeThemeMode(ThemeMode.dark);

          print("${Get.theme.brightness.toString() == "Brightness.light"}");
        },
        icon: Icon(Icons.night_shelter));
  } else if (Get.theme.brightness.toString() == "Brightness.dark") {
    return IconButton(
      onPressed: () {
        Get.changeThemeMode(ThemeMode.light);

        print("${Get.theme.brightness.toString()}");
      },
      icon: Icon(Icons.wb_sunny),
    );
  } else {
    return IconButton(
      icon: Icon(Icons.ac_unit),
      onPressed: () {},
    );
  }
}
