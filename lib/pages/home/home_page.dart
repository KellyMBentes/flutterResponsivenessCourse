import 'package:flutter/material.dart';
import 'package:flutter_responsiveness_course/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:flutter_responsiveness_course/pages/home/widgets/app_bar/web_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: constraints.maxWidth <= 800
            ? PreferredSize(
                preferredSize: const Size(double.infinity, 56),
                child: MobileAppBar(),
              )
            : PreferredSize(
                preferredSize: const Size(double.infinity, 72),
                child: WebAppBar(),
              ),
        drawer: const Drawer(),
      );
    });
  }
}
