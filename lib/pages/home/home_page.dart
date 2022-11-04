import 'package:flutter/material.dart';
import 'package:flutter_responsiveness_course/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:flutter_responsiveness_course/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:flutter_responsiveness_course/pages/home/widgets/sections/top_section.dart';

import '../../break_points.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth <= mobileBreakpoint
            ? PreferredSize(
                preferredSize: const Size(double.infinity, 56),
                child: MobileAppBar(),
              )
            : PreferredSize(
                preferredSize: const Size(double.infinity, 72),
                child: WebAppBar(),
              ),
        drawer:
            constraints.maxWidth <= mobileBreakpoint ? const Drawer() : null,
        body: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1400),
            child: ListView(
              children: [
                TopSection(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
