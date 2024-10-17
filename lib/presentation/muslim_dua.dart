import 'package:demo_dua_prooject/core/config/themes.dart';
import 'package:demo_dua_prooject/presentation/home/ui/home_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MuslimDua extends StatefulWidget {
  const MuslimDua({super.key});

  static final GlobalKey _globalKey = GlobalKey();
  static BuildContext get globalContext =>
      Get.context ?? _globalKey.currentContext!;

  @override
  State<MuslimDua> createState() => _MuslimDuaState();
}

class _MuslimDuaState extends State<MuslimDua> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, oriantation, sreenType) {
        return GetMaterialApp(
          key: MuslimDua._globalKey,
          debugShowCheckedModeBanner: false,
          title: 'Muslim Dua',
          theme: QuranTheme.greenTheme,
          darkTheme: QuranTheme.darkTheme,
          themeMode: ThemeMode.system,
          defaultTransition: Transition.rightToLeftWithFade,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaler: const TextScaler.linear(1.0),
              ),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: child ?? const SizedBox.shrink(),
              ),
            );
          },
          home: HomePage(),
        );
      },
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
