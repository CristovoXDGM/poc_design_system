part of 'themes.dart';

class _ExaThemeColors {
  static const Color exaGreen = Color(0xff9BD900);
  static const Color exaCyan = Color(0xff16C1F5);
  static const Color exaCyanLight = Color(0xffDCF7FF);
  static const Color exaDarkBlue = Color(0xff123382);
  static const Color exaLightBlue = Color(0xffCFDAF0);
  static const Color exaBlue = Color(0xff004BC1);
  static const Color exaPurple = Color(0xff6531BD);
  static const Color exaPink = Color(0xffF660A3);
  static const Color exaRed = Color(0xffFF3C3C);
  static const Color exaBlack = Color(0xff1F1F1F);
  static const Color exaDarkGrey = Color(0xff666666);
  static const Color exaGrey = Color(0xffD1D1D1);
  static const Color exaLightGrey = Color(0xffF0F0F0);
  static const Color exaWhite = Color(0xffFDFDFD);
  static const Color exaErro = Color(0xffCC1100);
  static const Color exaSuccess = Color(0xff9BD900);
}

const exaColorSCheme = ColorScheme(
  brightness: Brightness.light,
  primary: _ExaThemeColors.exaBlue,
  onPrimary: _ExaThemeColors.exaWhite,
  secondary: _ExaThemeColors.exaPurple,
  onSecondary: _ExaThemeColors.exaWhite,
  error: _ExaThemeColors.exaErro,
  onError: _ExaThemeColors.exaErro,
  background: _ExaThemeColors.exaWhite,
  onBackground: _ExaThemeColors.exaBlack,
  surface: _ExaThemeColors.exaWhite,
  onSurface: _ExaThemeColors.exaBlack,
);
