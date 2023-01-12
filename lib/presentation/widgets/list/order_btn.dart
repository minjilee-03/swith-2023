import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../global/theme/theme.dart';
import '../common/transparent_inkwell.dart';

class OrderBtn extends StatelessWidget {
  const OrderBtn({
    required this.type,
    required this.onTap,
    required this.isSelected,
    super.key,
  });
  final String type;
  final Function() onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return TransparentInkwell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 6.w,
            height: 6.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? SwithColors.blue : SwithColors.greyE1E4E7,
            ),
          ),
          SizedBox(width: 5.w),
          Text(
            type == 'asc' ? '오름차순' : '내림차순',
            style: isSelected
                ? SwithTextTheme.bodyText4grey495057
                : SwithTextTheme.bodyText4greyADB5BD,
          ),
        ],
      ),
    );
  }
}
