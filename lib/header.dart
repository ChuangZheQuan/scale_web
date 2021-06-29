import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:fluttericon/font_awesome5_icons.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nameWidget = "Scale."
        .text
        .red100
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer(
            primaryColor: Vx.hexToColor("#038a91"),
            secondaryColor: Vx.hexToColor("#026a70"));
    return SafeArea(
      child: VxBox(
              child: VStack([
        ZStack(
          [
            // PictureWidget(),
            Row(
              children: [
                VStack([
                  if (context.isMobile) 50.heightBox else 10.heightBox,
                  CustomAppBar().shimmer(
                      primaryColor: Vx.hexToColor("#038a91"),
                      secondaryColor: Vx.hexToColor("#026a70")),
                  30.heightBox,
                  nameWidget,
                  20.heightBox,
                  VxBox()
                      .color(Vx.hexToColor("#ca9b00"))
                      .size(60, 10)
                      .make()
                      .px4()
                      .shimmer(
                          primaryColor: Vx.hexToColor("#038a91"),
                          secondaryColor: Vx.hexToColor("#026a70")),
                  30.heightBox,
                  SocialAccounts(),
                ]).pSymmetric(
                  h: context.percentWidth * 10,
                  v: 32,
                ),
                Expanded(
                  child: VxResponsive(
                    small: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    medium: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    large: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    xlarge: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    fallback: const Offstage(),
                  ),
                )
              ],
            ).w(context.screenWidth)
          ],
        )
      ]))
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Vx.hexToColor("#00beca"))
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " -Who are we-".text.gray500.widest.sm.make(),
          10.heightBox,
          "Scale offers an app that is a one-stop platform for sexual harassment victims. The app takes a holistic approach to the issue to include legal and medical remedies as well as support services from NGOs."
              .text
              .white
              .xl3
              .maxLines(10)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
        'Feel like a victim of harassment or unlawful stalking? Our questionnaire advices on the next steps you can take:'
            .text
            .white
            .lg
            .make()
            .w(context.isMobile
                ? context.screenWidth
                : context.percentWidth * 40),
        RaisedButton(
          onPressed: () {
            launch("https://scale-web-app-2-pearl.vercel.app/");
          },
          hoverColor: Vx.hexToColor("#038a91"),
          shape: Vx.roundedSm,
          color: Vx.hexToColor("#026a70"),
          textColor: Colors.white,
          padding: EdgeInsets.only(left: 50, right: 50),
          child: "Assess your situation here!".text.make(),
        ).h(50).centered()
      ],
      // crossAlignment: CrossAxisAlignment.center,
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FaIcon(
      FontAwesomeIcons.balanceScale,
      size: 30,
      color: Coolors.accentColor,
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      origin: Offset(context.percentWidth * 2, 0),
      transform: Matrix4.rotationY(pi * 2),
      child: Image.asset(
        "assets/pic.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      FaIcon(
        FontAwesomeIcons.linkedin,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.linkedin.com/company/scalesg");
      }).make(),
      20.widthBox,
      FaIcon(
        FontAwesomeIcons.instagram,
        color: Colors.white,
      ).mdClick(() {
        launch("https://instagram.com/scalejusticesg?utm_medium=copy_link");
      }).make(),
      20.widthBox,
      FaIcon(
        FontAwesomeIcons.googlePlay,
        color: Colors.white,
      ).mdClick(() {
        launch(
            "https://play.google.com/store/apps/details?id=com.benjaminkoh.scale");
      }).make(),
      20.widthBox,
      Icon(
        FontAwesomeIcons.appStoreIos,
        color: Colors.white,
      ).mdClick(() {
        launch("https://apps.apple.com/sg/app/scalesg/id1552432641");
      }).make()
    ].hStack();
  }
}
