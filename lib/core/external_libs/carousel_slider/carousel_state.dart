import 'package:demo_dua_prooject/core/external_libs/carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';

class CarouselState {
  CarouselState(
    this.options,
    this.onResetTimer,
    this.onResumeTimer,
    this.changeMode,
  );

  CarouselOptions options;

  PageController? pageController;

  int realPage = 10000;

  int initialPage = 0;

  int? itemCount;

  VoidCallback onResetTimer;

  VoidCallback onResumeTimer;

  void Function(CarouselPageChangedReason) changeMode;
}
