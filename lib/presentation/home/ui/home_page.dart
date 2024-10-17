import 'dart:developer';

import 'package:demo_dua_prooject/core/di/service_locator.dart';
import 'package:demo_dua_prooject/presentation/home/presenter/home_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final homePresente = locate<HomePresenter>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        actions: const [],
      ),
      body: SvgColorChanger(icon: 'main', replaceColor: 'red'),
    );
  }
}

class SvgColorChanger extends StatelessWidget {
  final String icon;
  final String replaceColor; // Constructor এ color প্যারামিটার

  const SvgColorChanger(
      {super.key, required this.icon, required this.replaceColor});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _loadSvgString(context),
      builder: (context, snapshot) {
        final svgData = snapshot.data ??
            '<svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1 1"></svg>';
        log('svgData: $svgData');

        return SvgPicture.string(
          svgData
              .replaceAll("#FBECD6",
                  replaceColor) // Constructor থেকে পাঠানো replaceColor ব্যবহার করা হয়েছে
              .replaceAll('#F4EDE3', replaceColor)
              .replaceAll('url(#paint2_radial_4743_75220)', replaceColor)
              .replaceAll('#614730', '#000000')
              .replaceAll('white', replaceColor),
          width: 200,
        );
      },
    );
  }

  Future<String> _loadSvgString(BuildContext context) async {
    return await DefaultAssetBundle.of(context)
        .loadString("assets/svg/$icon.svg");
  }
}
