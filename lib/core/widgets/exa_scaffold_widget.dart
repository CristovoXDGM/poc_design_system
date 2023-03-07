import 'package:flutter/material.dart';

class PocScaffoldWidget extends StatefulWidget {
  const PocScaffoldWidget({
    super.key,
    required this.appHeader,
    required this.body,
    this.drawer,
  });

  final PreferredSizeWidget appHeader;
  final Widget body;
  final Widget? drawer;

  @override
  State<PocScaffoldWidget> createState() => _PocScaffoldWidgetState();
}

class _PocScaffoldWidgetState extends State<PocScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appHeader,
      drawer: widget.drawer,
      body: widget.body,
    );
  }
}
