import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/ads/ads_model.dart';
import '../../../domain/list/list_model.dart';
import '../../../global/theme/theme.dart';

class ListItem extends StatefulWidget {
  const ListItem({
    super.key,
    required this.isSponsore,
    required this.ads,
    required this.feedList,
  });
  final bool isSponsore;
  final Ads ads;
  final FeedList feedList;
  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: SwithColors.white,
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          _writerInfo(),
          if (!widget.isSponsore) const Divider(color: SwithColors.greyE1E4E7),
          widget.isSponsore
              ? Container(
                  height: 179.h,
                  margin: EdgeInsets.symmetric(vertical: 16.h),
                  color: SwithColors.greyE1E4E7,
                  child: Image.network(
                    'https://cdn.swith.kr/assignment/${widget.ads.img}',
                  ),
                )
              : Container(
                  margin: EdgeInsets.symmetric(vertical: 16.h),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${widget.feedList.userId}',
                    style: SwithTextTheme.bodyText4grey495057,
                  ),
                ),
          _title(),
          SizedBox(height: 6.h),
          _contents(),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  _writerInfo() {
    return widget.isSponsore
        ? Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'sponsored',
              style: SwithTextTheme.bodyText4greyADB5BD,
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'widget.feedList.category.name',
                style: SwithTextTheme.bodyText4grey7E848A,
              ),
              Text(
                'contents_id',
                style: SwithTextTheme.bodyText4greyADB5BD,
              ),
            ],
          );
  }

  _title() {
    return Text(
      widget.isSponsore ? widget.ads.title : widget.feedList.title,
      overflow: TextOverflow.ellipsis,
      maxLines: widget.isSponsore ? 2 : 1,
      style: SwithTextTheme.bodyText2grey282c30wBold,
    );
  }

  _contents() {
    return Text(
      widget.isSponsore ? widget.ads.contents : widget.feedList.contents,
      overflow: TextOverflow.ellipsis,
      maxLines: widget.isSponsore ? 2 : 1,
      style: SwithTextTheme.bodyText3grey495057,
    );
  }
}
