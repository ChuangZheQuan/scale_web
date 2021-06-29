import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scale_web_app/widgets/makenew.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:animated_button/animated_button.dart';

import 'displayitems.dart';

class WebView extends StatelessWidget {
  const WebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
                padding: EdgeInsets.all(20),
                child: InkWell(
                    onTap: () {
                      print(
                          "'System Brightness: ${Get.mediaQuery.platformBrightness.toString()}', and ${Get.theme.brightness.toString()}");
                    },
                    child: "About us".text.make().centered())),
            // makenew()
          ],
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: children2,
              ),
            ),
          ],
        ));
  }
}
