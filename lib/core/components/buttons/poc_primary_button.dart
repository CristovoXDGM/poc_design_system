import 'package:flutter/material.dart';

import '../../theme/themes.dart';

class ExaPrimaryButton extends StatefulWidget {
  final Function()? onPressed;
  final Widget prefixIcon;
  final Widget iconText;
  final String text;
  final Widget sufixIcon;
  final double radius;
  final double buttonHeight;
  final double buttonWidth;
  final double? prefixIconDivider;
  final double? sufixIconDivider;

  const ExaPrimaryButton({
    super.key,
    this.onPressed,
    this.prefixIcon = const SizedBox(),
    this.iconText = const SizedBox(),
    required this.text,
    this.sufixIcon = const SizedBox(),
    this.radius = 20,
    this.buttonHeight = 64,
    this.buttonWidth = 311,
    this.prefixIconDivider,
    this.sufixIconDivider,
  });

  @override
  State<ExaPrimaryButton> createState() => _ExaPrimaryButtonState();
}

class _ExaPrimaryButtonState extends State<ExaPrimaryButton> {
  bool loading = false;

  void buildLoading() {
    setState(() {
      loading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    double prefixDivider = 0;
    double sufixDivider = 0;

    if (widget.prefixIconDivider == null && widget.prefixIcon is! SizedBox) {
      prefixDivider = 8;
    }

    if (widget.sufixIconDivider == null && widget.sufixIcon is! SizedBox) {
      sufixDivider = 45;
    }

    return SizedBox(
      height: widget.buttonHeight,
      width: widget.buttonWidth,
      child: ElevatedButton(
        onPressed: () {
          buildLoading();
          widget.onPressed;
        },
        style: theme.elevatedButtonTheme.style!.copyWith(
          shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(widget.radius),
            ),
          ),
        ),
        child: loading
            ? Center(
                child: SizedBox(
                  height: 16,
                  width: 16,
                  child: CircularProgressIndicator(
                    color: pocColorSCheme.surface,
                  ),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.prefixIcon,
                  SizedBox(width: prefixDivider),
                  widget.iconText,
                  Text(widget.text),
                  SizedBox(width: sufixDivider),
                  widget.sufixIcon,
                ],
              ),
      ),
    );
  }
}
