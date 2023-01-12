import 'package:flutter/material.dart';

import '../../../global/theme/theme.dart';

class TransparentInkwell extends StatelessWidget {
  const TransparentInkwell({
    Key? key,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  final Function() onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: SwithColors.transparent,
      splashColor: SwithColors.transparent,
      onTap: onTap,
      child: child,
    );
  }
}
