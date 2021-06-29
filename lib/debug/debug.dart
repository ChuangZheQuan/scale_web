import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

void main() async{
  await GetStorage.init();  // before building the app  you need to initialize GetStorage
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final appdata = GetStorage();  // instance of GetStorage

  @override
  Widget build(BuildContext context) {

    appdata.writeIfNull('darkmode', false);
    return SimpleBuilder(
      builder: (_)
      {
        bool isDarkMode = appdata.read('darkmode');
        return GetMaterialApp(
          theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
          home: Scaffold(
            appBar: AppBar(title: Text("Getx Dynamic theme change"),),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(isDarkMode ? 'images/night.png' :'images/day.png' ,width: 100,height: 100,),
                  Switch(
                    value: isDarkMode ,
                    onChanged: (value) => appdata.write('darkmode', value),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}