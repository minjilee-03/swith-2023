// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// import '../../../domain/category/category.dart';
// import '../../../global/theme/theme.dart';

// import '../common/common.dart';


// import '../list/save_btn.dart';

// class FiltterDialog extends StatefulWidget {
//   const FiltterDialog({
//     Key? key,
//     required this.categorys,
//     required this.initId,
//   }) : super(key: key);
//   final List<Categorys> categorys;
//   final int initId;
//   @override
//   State<FiltterDialog> createState() => _NotiDialogState();
// }

// class _NotiDialogState extends State<FiltterDialog> {
//   int _selectedId = 0;
//   List<Widget> _dialogSelectOptions(List<Categorys> options) {
//     List<Widget> widget = [];
//     for (int i = 0; i < options.length; i++) {
//       Categorys categorys = options[i];
//       widget.add(
//         CategoryRowBox(
//           categorys: categorys,
//           isSelected: _selectedId == categorys.id,
//           onTap: () {
//             setState(() => _selectedId = categorys.id);
//           },
//         ),
//       );
//     }
//     return widget;
//   }

//   @override
//   void initState() {
//     super.initState();
//     if (widget.initId != 0) {
//       _selectedId = widget.initId;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Stack(
//         children: [
//           TransparentInkwell(
//             child: SizedBox(
//               width: Get.width,
//               height: Get.height,
//             ),
//             onTap: () => Get.back(),
//           ),
//           Align(
//             alignment: Alignment.center,
//             child: Container(
//               width: 337.w,
//               height: 268.h,
//               color: SwithColors.white,
//               padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
//               child: Column(
//                 children: [
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: IconBtn(
//                       width: 12,
//                       height: 12,
//                       icon: const Icon(
//                         Icons.close,
//                         color: SwithColors.greyADB5BD,
//                       ),
//                       onTap: () => Get.back(),
//                     ),
//                   ),
//                   Container(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       '필터',
//                       style: SwithTextTheme.bodyText1grey212529wBold,
//                     ),
//                   ),
//                   SizedBox(height: 13.h),
//                   ..._dialogSelectOptions(widget.categorys),
//                   const Spacer(),
//                   Container(
//                     margin: EdgeInsets.symmetric(vertical: 15.h),
//                     child: SaveBtn(
//                       onTap: () {},
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
