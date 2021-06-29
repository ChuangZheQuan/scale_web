// import 'package:flutter/material.dart';
// import 'package:get/route_manager.dart';
// import 'package:scale_web_app/routes.dart';
// import 'package:scale_web_app/themes/theme_dark.dart';
// import 'package:scale_web_app/themes/theme_light.dart';
// // import 'package:scale_web_app/routes.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'package:get/get.dart';

// import 'desktop/content_web.dart';
// import 'mobile/contents.dart';
// import 'package:get_storage/get_storage.dart';

// Future<void> main() async {
//   runApp(MyApp());
//   await GetStorage.init();
// }

// class MyApp extends StatelessWidget {
//   MyApp({Key? key}) : super(key: key);
//   final appdata = GetStorage();
//   @override
//   Widget build(BuildContext context) {
//     appdata.writeIfNull(
//         'darkmode', Get.theme.brightness.toString() == "Brightness.dark");

//     ThemeMode _theme = ThemeMode.system;
//     ThemeMode _darkTheme = ThemeMode.dark;
//     ThemeMode _lightTheme = ThemeMode.light;
//     return SimpleBuilder(builder: (_) {
//       bool isDarkMode = appdata.read('darkmode');
//       return GetMaterialApp(
//           theme: isDarkMode ? themeDark : themeLight,
//           // darkTheme: themeDark,
//           themeMode: ThemeMode.system,
//           debugShowCheckedModeBanner: false,
//           initialRoute: '/',
//           defaultTransition: Transition.zoom,
//           getPages: listOfRoutes(),
//           home: VxDevice(
//               mobile: MobileView(isDarkMode: isDarkMode, appdata: appdata),
//               web: WebView()));
//     });
//   }
// }
