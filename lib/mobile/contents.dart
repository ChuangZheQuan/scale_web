import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MobileView extends StatelessWidget {
  final dynamic isDarkMode;
  final dynamic appdata;
  const MobileView({
    Key? key,
    required this.isDarkMode,
    required this.appdata,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(isDarkMode ? Icons.nightlight_round : Icons.wb_sunny),
              Switch(
                value: isDarkMode,
                onChanged: (value) => appdata.write('darkmode', value),
              ),
            ],
          ),
        )),
        appBar: AppBar(
          title: "Scale".text.make(),
        ),
        body: VxBox(
                child: Text(
          "Scale",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),
        ).centered())
            .blue200
            .shadow
            .height(100)
            .make()
            .centered());
  }
}
