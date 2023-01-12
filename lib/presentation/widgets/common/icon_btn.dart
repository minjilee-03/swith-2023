import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'transparent_inkwell.dart';

class IconBtn extends StatelessWidget {
  const IconBtn({
    required this.width,
    required this.height,
    required this.icon,
    required this.onTap,
    super.key,
  });

  final int width;
  final int height;
  final Icon icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return TransparentInkwell(
      onTap: onTap,
      child: SizedBox(
        width: width.w,
        height: height.h,
        child: icon,
      ),
    );
  }
}
