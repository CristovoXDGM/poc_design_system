import 'package:flutter/material.dart';

part 'poc_theme_colors.dart';

class PocThemes {
  ThemeData get lightTheme => ThemeData(
        colorScheme: pocColorSCheme,
        elevatedButtonTheme: elevatedButtonTheme,
      );

  ThemeData get darkTheme => ThemeData.dark();

  ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return _PocThemeColors.pocWhite;
            }
            return _PocThemeColors.pocWhite;
          }),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.pressed)) {
                return _PocThemeColors.pocDarkBlue;
              } else if (states.contains(MaterialState.disabled)) {
                return _PocThemeColors.pocLightBlue;
              }

              return _PocThemeColors.pocBlue;
            },
          ),
          shape: MaterialStateProperty.resolveWith((states) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            );
          }),
        ),
      );
}
