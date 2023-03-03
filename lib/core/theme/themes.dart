import 'package:flutter/material.dart';

part 'exa_theme_colors.dart';

ThemeData get lightTheme => ThemeData(
      colorScheme: exaColorSCheme,
      elevatedButtonTheme: elevatedButtonTheme,
    );

ThemeData get darkTheme => ThemeData.dark();

ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return _ExaThemeColors.exaWhite;
          }
          return _ExaThemeColors.exaWhite;
        }),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.pressed)) {
              return _ExaThemeColors.exaDarkBlue;
            } else if (states.contains(MaterialState.disabled)) {
              return _ExaThemeColors.exaLightBlue;
            }

            return _ExaThemeColors.exaBlue;
          },
        ),
        shape: MaterialStateProperty.resolveWith((states) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          );
        }),
      ),
    );
