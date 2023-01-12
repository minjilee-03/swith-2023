import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swith2023/global/theme/colors.dart';
import 'package:swith2023/global/theme/text.dart';

import '/presentation/widgets/common/common.dart';

enum BottomTap {
  card,
  calendar,
  timer,
  myPage,
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, required this.onTap});

  final Function(int) onTap;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  BottomTap _selectedBtn = BottomTap.card;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: SwithColors.black,
              width: 1,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _cardBtn(),
            _calendarBtn(),
            _timerBtn(),
            _myPageBtn(),
          ],
        ),
      ),
    );
  }

  _onTap(BottomTap tap) {
    if (_selectedBtn == tap) {
      return;
    }
    setState(() => _selectedBtn = tap);
    widget.onTap(tap.index);
  }

  _cardBtn() => Expanded(
        child: TransparentInkwell(
          onTap: () => _onTap(BottomTap.card),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset('assets/svg/card_icon.svg'),
              SizedBox(height: 6.h),
              Text(
                '단어장',
                style: SwithTextTheme.bodyText5NavyBold,
              ),
            ],
          ),
        ),
      );

  _calendarBtn() => Expanded(
        child: TransparentInkwell(
          onTap: () {
            _onTap(BottomTap.calendar);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset('assets/svg/calendar_icon.svg'),
              SizedBox(height: 6.h),
              Text(
                '캘린더',
                style: SwithTextTheme.bodyText5NavyBold,
              ),
            ],
          ),
        ),
      );

  _timerBtn() => Expanded(
        child: TransparentInkwell(
          onTap: () => _onTap(BottomTap.timer),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset('assets/svg/timer_icon.svg'),
              SizedBox(height: 6.h),
              Text(
                '타이머',
                style: SwithTextTheme.bodyText5NavyBold,
              ),
            ],
          ),
        ),
      );

  _myPageBtn() => Expanded(
        child: TransparentInkwell(
          onTap: () => _onTap(BottomTap.myPage),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset('assets/svg/my_page_icon.svg'),
              SizedBox(height: 4.h),
              Text(
                '내 정보',
                style: SwithTextTheme.bodyText5NavyBold,
              ),
            ],
          ),
        ),
      );
}
