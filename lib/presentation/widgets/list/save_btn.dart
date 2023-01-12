import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../global/theme/theme.dart';
import '/presentation/widgets/common/transparent_inkwell.dart';

class SaveBtn extends StatelessWidget {
  const SaveBtn({super.key, required this.onTap});
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return TransparentInkwell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: Get.width,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.r),
          color: SwithColors.blue,
        ),
        child: Text(
          '저장하기',
          style: SwithTextTheme.bodyText3White,
        ),
      ),
    );
  }
}
