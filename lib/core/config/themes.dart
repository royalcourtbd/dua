import 'package:demo_dua_prooject/core/config/dua_color.dart';
import 'package:demo_dua_prooject/core/config/dua_custom_theme_colors.dart';
import 'package:demo_dua_prooject/core/static/font_family.dart';
import 'package:demo_dua_prooject/core/utility/trial_utility.dart';
import 'package:demo_dua_prooject/presentation/muslim_dua.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranTheme {
  QuranTheme._();

  static ThemeData lightTheme = ThemeData(
    extensions: [
      QuranCustomThemeColors(
        primaryColor: DuaColor.primaryColorLight,
        secondary: DuaColor.secondaryColorLight,
        cardShade: DuaColor.cardColorLight,
        topShapeBg: DuaColor.topShapeBgLight,
        navInactive: DuaColor.navInactiveLight,
        topIconHome: DuaColor.primaryColorLight,
        backgroundColor: DuaColor.scaffoldBachgroundColorLight,
        whiteColor: Colors.white,
        navBgAc: DuaColor.navBgAcLight.withOpacity(0.25),
        blackColor: DuaColor.blackColorLight,
        subtitleColor: DuaColor.textColorLight.withOpacity(0.6),
        homeDashboardBgColor: DuaColor.scaffoldBachgroundColorLight,
        gdTop: DuaColor.gdTopLight,
        gdBottom: DuaColor.gdBottomLight,
        gdMiddle: DuaColor.gdMiddleLight,
      ),
    ],
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: FontFamily.kalpurush,

    checkboxTheme: CheckboxThemeData(
      checkColor: const WidgetStatePropertyAll(Colors.white),
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return DuaColor.primaryColorLight;
        }
        return Colors.transparent;
      }),
      side: BorderSide(
        color: DuaColor.primaryColorLight.withOpacity(0.4),
        width: 2,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.5)),
    ),
    bannerTheme:
        const MaterialBannerThemeData(backgroundColor: Color(0xffDBDBDB)),
    dialogTheme: const DialogTheme(
      backgroundColor: DuaColor.scaffoldBachgroundColorLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xffDEDEDE)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xff17B686)),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xff17B686)),
      ),
      focusColor: DuaColor.primaryColorLight,
      labelStyle: TextStyle(color: Color(0xff17B686)),
      hoverColor: Color(0xff17B686),
      fillColor: Colors.white,
    ),
    dividerTheme: DividerThemeData(
      color: DuaColor.primaryColorLight.withOpacity(0.9),
      thickness: 1,
      space: 0,
    ),
    radioTheme: RadioThemeData(
      visualDensity: const VisualDensity(horizontal: -4),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      overlayColor: WidgetStateProperty.all(DuaColor.cardColorLight),
      fillColor: WidgetStateProperty.all(DuaColor.primaryColorLight),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: DuaColor.primaryColorLight,
      selectionColor: DuaColor.primaryColorLight.withOpacity(0.2),
      selectionHandleColor: DuaColor.primaryColorLight,
    ),
    disabledColor: const Color(0xff7F909F),
    dividerColor: const Color(0xffDEDEDE),
    primaryColorLight: Colors.black,
    secondaryHeaderColor: const Color(0xff17B686),
    //   iconButtonTheme: IconButtonThemeData(
    //     style: ButtonStyle(
    //  iconColor: WidgetStateProperty<>
    //     ),
    //   ),
    buttonTheme: const ButtonThemeData(
      buttonColor: DuaColor.textColorLight,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        // backgroundColor: Colors.red,
        ),
    cardColor: DuaColor.cardColorLight,
    iconTheme: const IconThemeData(color: DuaColor.textColorLight),
    primaryColor: DuaColor.primaryColorLight,
    scaffoldBackgroundColor: DuaColor.scaffoldBachgroundColorLight,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
      modalBackgroundColor: Color(0xFFF3F3F3),
    ),
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: WidgetStateProperty.all(DuaColor.primaryColorLight),
    ),
    appBarTheme: const AppBarTheme(
      shadowColor: Colors.white,
      backgroundColor: DuaColor.secondaryColorLight,
      foregroundColor: Color(0xff477848),
      elevation: 0,
      scrolledUnderElevation: 0,

      // color: Color(0xff17B686),
      iconTheme: IconThemeData(color: DuaColor.textColorLight),
    ),
    textTheme: const TextTheme(
        displayLarge: TextStyle(color: DuaColor.primaryColorLight),
        displayMedium: TextStyle(color: Color(0xFF3B3B3B)),
        bodySmall: TextStyle(
          color: DuaColor.textColorLight,
          //  fontFamily: FontFamily.inter,
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          //  fontFamily: FontFamily.inter,
          fontWeight: FontWeight.bold,
          color: DuaColor.textColorLight,
        ),
        bodyMedium: TextStyle(
          color: DuaColor.textColorLight,
          //  fontFamily: FontFamily.inter,
          height: 1.6,
        ),
        labelSmall: TextStyle(color: Colors.white)),
    colorScheme: const ColorScheme(
      scrim: DuaColor.primaryColorLight, //set for setting page title color

      brightness: Brightness.light,
      error: Color(0xFFED3535),

      onError: Color(0xFFFFFFFF),
      onPrimary: Color(0xFFFFFFFF),
      onSecondary: Color(0xFF000000),
      errorContainer: Color(0xFFFFE7DF),
      onSurface: Color(0xFF000000),
      primary: DuaColor.primaryColorLight,
      secondary: DuaColor.secondaryColorLight,
      surface: DuaColor.primaryColorLight,
      inverseSurface: DuaColor.scaffoldBachgroundColorLight,
    ),
  );
  static ThemeData greenTheme = ThemeData(
    extensions: [
      QuranCustomThemeColors(
        primaryColor: DuaColor.primaryColorGreen,
        secondary: DuaColor.secondaryColorGreen,
        cardShade: DuaColor.cardColorGreen,
        topShapeBg: DuaColor.topShapeBgGreen,
        navInactive: DuaColor.navInactiveGreen,
        topIconHome: DuaColor.primaryColorGreen,
        backgroundColor: DuaColor.scaffoldBachgroundColorGreen,
        whiteColor: Colors.white,
        navBgAc: DuaColor.navBgAcGreen.withOpacity(0.25),
        blackColor: DuaColor.blackColorGreen,
        subtitleColor: DuaColor.textColorGreen.withOpacity(0.6),
        homeDashboardBgColor: DuaColor.scaffoldBachgroundColorGreen,
        gdTop: DuaColor.gdTopGreen,
        gdBottom: DuaColor.gdBottomGreen,
        gdMiddle: DuaColor.gdMiddleGreen,
      ),
    ],
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: FontFamily.kalpurush,

    checkboxTheme: CheckboxThemeData(
      checkColor: const WidgetStatePropertyAll(Colors.white),
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return DuaColor.primaryColorGreen;
        }
        return Colors.transparent;
      }),
      side: BorderSide(
        color: DuaColor.primaryColorGreen.withOpacity(0.4),
        width: 2,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.5)),
    ),
    bannerTheme:
        const MaterialBannerThemeData(backgroundColor: Color(0xffDBDBDB)),
    dialogTheme: const DialogTheme(
      backgroundColor: DuaColor.scaffoldBachgroundColorGreen,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xffDEDEDE)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xff17B686)),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xff17B686)),
      ),
      focusColor: DuaColor.primaryColorGreen,
      labelStyle: TextStyle(color: Color(0xff17B686)),
      hoverColor: Color(0xff17B686),
      fillColor: Colors.white,
    ),
    dividerTheme: DividerThemeData(
      color: DuaColor.primaryColorGreen.withOpacity(0.9),
      thickness: 1,
      space: 0,
    ),
    radioTheme: RadioThemeData(
      visualDensity: const VisualDensity(horizontal: -4),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      overlayColor: WidgetStateProperty.all(DuaColor.cardColorGreen),
      fillColor: WidgetStateProperty.all(DuaColor.primaryColorGreen),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: DuaColor.primaryColorGreen,
      selectionColor: DuaColor.primaryColorGreen.withOpacity(0.2),
      selectionHandleColor: DuaColor.primaryColorGreen,
    ),
    disabledColor: const Color(0xff7F909F),
    dividerColor: const Color(0xffDEDEDE),
    primaryColorLight: Colors.black,
    secondaryHeaderColor: const Color(0xff17B686),
    //   iconButtonTheme: IconButtonThemeData(
    //     style: ButtonStyle(
    //  iconColor: WidgetStateProperty<>
    //     ),
    //   ),
    buttonTheme: const ButtonThemeData(
      buttonColor: DuaColor.textColorGreen,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        // backgroundColor: Colors.red,
        ),
    cardColor: DuaColor.cardColorGreen,
    iconTheme: const IconThemeData(color: DuaColor.textColorGreen),
    primaryColor: DuaColor.primaryColorGreen,
    scaffoldBackgroundColor: DuaColor.scaffoldBachgroundColorGreen,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
      modalBackgroundColor: Color(0xFFF3F3F3),
    ),
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: WidgetStateProperty.all(DuaColor.primaryColorGreen),
    ),
    appBarTheme: const AppBarTheme(
      shadowColor: Colors.white,
      backgroundColor: DuaColor.secondaryColorGreen,
      foregroundColor: Color(0xff477848),
      elevation: 0,
      scrolledUnderElevation: 0,

      // color: Color(0xff17B686),
      iconTheme: IconThemeData(color: DuaColor.textColorGreen),
    ),
    textTheme: const TextTheme(
        displayLarge: TextStyle(color: DuaColor.primaryColorGreen),
        displayMedium: TextStyle(color: Color(0xFF3B3B3B)),
        bodySmall: TextStyle(
          color: DuaColor.textColorGreen,
          //  fontFamily: FontFamily.inter,
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          //  fontFamily: FontFamily.inter,
          fontWeight: FontWeight.bold,
          color: DuaColor.textColorGreen,
        ),
        bodyMedium: TextStyle(
          color: DuaColor.textColorGreen,
          //  fontFamily: FontFamily.inter,
          height: 1.6,
        ),
        labelSmall: TextStyle(color: Colors.white)),
    colorScheme: const ColorScheme(
      scrim: DuaColor.primaryColorGreen, //set for setting page title color

      brightness: Brightness.light,
      error: Color(0xFFED3535),

      onError: Color(0xFFFFFFFF),
      onPrimary: Color(0xFFFFFFFF),
      onSecondary: Color(0xFF000000),
      errorContainer: Color(0xFFFFE7DF),
      onSurface: Color(0xFF000000),
      primary: DuaColor.primaryColorGreen,
      secondary: DuaColor.secondaryColorGreen,
      surface: DuaColor.primaryColorGreen,
      inverseSurface: DuaColor.scaffoldBachgroundColorGreen,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    extensions: [
      QuranCustomThemeColors(
        primaryColor: DuaColor.primaryColorDark,
        secondary: DuaColor.secondaryColorDark,
        cardShade: DuaColor.cardColorDark,
        topShapeBg: DuaColor.topShapeBgDark,
        navInactive: DuaColor.navInactiveDark,
        topIconHome: DuaColor.topIconHomeDark,
        backgroundColor: DuaColor.scaffoldBachgroundColorDark,
        whiteColor: Colors.white,
        navBgAc: DuaColor.navBgAcDark.withOpacity(0.25),
        blackColor: DuaColor.blackColorDark,
        subtitleColor: DuaColor.textColorDark.withOpacity(0.6),
        homeDashboardBgColor: DuaColor.cardColorDark,
        gdTop: DuaColor.gdTopDark,
        gdBottom: DuaColor.gdBottomDark,
        gdMiddle: DuaColor.gdMiddleDark,
      ),
    ],
    fontFamily: FontFamily.kalpurush,
    checkboxTheme: CheckboxThemeData(
      checkColor: const WidgetStatePropertyAll(Colors.white),
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return DuaColor.primaryColorDark;
        }
        return Colors.transparent;
      }),
      side: const BorderSide(
        color: DuaColor.primaryColorDark,
        width: 2,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.5)),
    ),
    bannerTheme:
        const MaterialBannerThemeData(backgroundColor: Color(0xff7F909F)),
    dialogTheme: const DialogTheme(
      backgroundColor: Color(0xff122337),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        //backgroundColor: Colors.red,
        ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.all(DuaColor.textColorDark),
      visualDensity: const VisualDensity(horizontal: -4),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: Color(0xff7F909F)),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF585868)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xff17B686)),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xff17B686)),
      ),
      focusColor: DuaColor.textColorDark,
      labelStyle: TextStyle(color: Color(0xff17B686)),
      hoverColor: Color(0xff17B686),
      fillColor: Color(0xff223449),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: DuaColor.textColorDark,
      selectionColor: DuaColor.textColorDark.withOpacity(0.5),
      selectionHandleColor: DuaColor.textColorDark,
    ),
    disabledColor: const Color(0xff7F909F),
    secondaryHeaderColor: const Color(0xff17B686),
    bottomAppBarTheme: const BottomAppBarTheme(color: Colors.amber),
    cardColor: DuaColor.cardColorDark,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Color(0xff122337),
      modalBackgroundColor: Color(0xff223449),
    ),
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: WidgetStateProperty.all(DuaColor.textColorDark),
    ),
    appBarTheme: const AppBarTheme(
      shadowColor: Colors.black,
      backgroundColor: DuaColor.secondaryColorDark,
      foregroundColor: Color(0xff477848),
      elevation: 0,
      iconTheme: IconThemeData(color: DuaColor.textColorDark),
      scrolledUnderElevation: 0,
    ),
    primaryColor: DuaColor.primaryColorDark,
    scaffoldBackgroundColor: DuaColor.scaffoldBachgroundColorDark,
    primaryColorDark: const Color(0xff122337),
    dividerColor: const Color(0xFF585868),
    iconTheme: const IconThemeData(color: Color(0xff7F909F)),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(
        color: DuaColor.textColorDark,
        //  fontFamily: FontFamily.inter,
        height: 1.6,
      ),
      displayLarge: TextStyle(color: DuaColor.textColorDark),
      displayMedium: TextStyle(color: Colors.white),
      displaySmall: TextStyle(color: Colors.white),
      headlineMedium: TextStyle(color: Colors.white),
      headlineSmall: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(
        //  fontFamily: FontFamily.inter,
        fontWeight: FontWeight.bold,
        color: DuaColor.textColorDark,
      ),
      titleSmall: TextStyle(color: Colors.white),
      labelLarge: TextStyle(color: Colors.white),
      bodySmall: TextStyle(
        color: DuaColor.textColorDark,
        //  fontFamily: FontFamily.inter,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: TextStyle(
        color: DuaColor.textColorLight,
      ),
    ),
    colorScheme: const ColorScheme.dark(
      scrim: DuaColor.textColorDark, //set for setting page title color
      primary: DuaColor.textColorDark,
      secondary: DuaColor.secondaryColorDark,
      error: Color(0xFFED3535),
      //surface: set for check box color dark and light,
      errorContainer: Color(0xFF202939),
      surface: DuaColor.textColorDark,
      inverseSurface: DuaColor.scaffoldBachgroundColorDark,
    ),
  );
}

Future<SystemUiOverlayStyle?> getSystemUiOverlayStyle({
  bool? isDark,
  BuildContext? context,
}) async {
  final SystemUiOverlayStyle? uiOverlayStyle = await catchAndReturnFuture(
    () async {
      final ThemeData theme = Theme.of(context ?? MuslimDua.globalContext);
      final Color statusBarColor = isDark == null
          ? theme.primaryColor
          : (isDark ? const Color(0x00ffffff) : const Color(0xffffffff));
      final Color systemNavigationBarColor = isDark == null
          ? theme.cardColor
          : (isDark ? const Color(0xff161C23) : const Color(0xffffffff));
      return SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: systemNavigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      );
    },
  );
  return uiOverlayStyle;
}
