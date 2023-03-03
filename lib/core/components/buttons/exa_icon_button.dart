import 'package:flutter/material.dart';

class ExaIconButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget icon;

  const ExaIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ElevatedButton(
      onPressed: onPressed,
      style: theme.elevatedButtonTheme.style!.copyWith(
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(9),
          ),
        ),
      ),
      child: icon,
    );
  }
}
