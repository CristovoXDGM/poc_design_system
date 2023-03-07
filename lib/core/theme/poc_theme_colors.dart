// ignore_for_file: unused_element

part of 'themes.dart';

class _PocThemeColors {
  static const Color pocGreen = Color(0xff9BD900);
  static const Color pocCyan = Color(0xff16C1F5);
  static const Color pocCyanLight = Color(0xffDCF7FF);
  static const Color pocDarkBlue = Color(0xff123382);
  static const Color pocLightBlue = Color(0xffCFDAF0);
  static const Color pocBlue = Color(0xff004BC1);
  static const Color pocPurple = Color(0xff6531BD);
  static const Color pocPink = Color(0xffF660A3);
  static const Color pocRed = Color(0xffFF3C3C);
  static const Color pocBlack = Color(0xff1F1F1F);
  static const Color pocDarkGrey = Color(0xff666666);
  static const Color pocGrey = Color(0xffD1D1D1);
  static const Color pocLightGrey = Color(0xffF0F0F0);
  static const Color pocWhite = Color(0xffFDFDFD);
  static const Color pocErro = Color(0xffCC1100);
  static const Color pocSuccess = Color(0xff9BD900);
}

class _PocColorScheme extends ColorScheme {
  final Color pocGreen;
  final Color pocCyan;
  final Color pocCyanLight;
  final Color pocPink;
  final Color pocRed;
  final Color pocDarkGrey;
  final Color pocGrey;
  final Color pocLightGrey;
  final Color pocSuccess;

  const _PocColorScheme({
    super.brightness = Brightness.light,
    super.primary = _PocThemeColors.pocBlue,
    super.onPrimary = _PocThemeColors.pocWhite,
    super.secondary = _PocThemeColors.pocPurple,
    super.onSecondary = _PocThemeColors.pocWhite,
    super.error = _PocThemeColors.pocErro,
    super.onError = _PocThemeColors.pocErro,
    super.background = _PocThemeColors.pocWhite,
    super.onBackground = _PocThemeColors.pocBlack,
    super.surface = _PocThemeColors.pocWhite,
    super.onSurface = _PocThemeColors.pocBlack,
    this.pocCyan = _PocThemeColors.pocCyan,
    this.pocCyanLight = _PocThemeColors.pocCyanLight,
    this.pocDarkGrey = _PocThemeColors.pocDarkGrey,
    this.pocGreen = _PocThemeColors.pocGreen,
    this.pocGrey = _PocThemeColors.pocGrey,
    this.pocLightGrey = _PocThemeColors.pocLightGrey,
    this.pocPink = _PocThemeColors.pocPink,
    this.pocRed = _PocThemeColors.pocRed,
    this.pocSuccess = _PocThemeColors.pocSuccess,
  });
}

const pocColorSCheme = _PocColorScheme();
