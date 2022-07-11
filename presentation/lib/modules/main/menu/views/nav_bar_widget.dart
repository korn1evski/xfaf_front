import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CustomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final List<PersistentBottomNavBarItem>
  items; // NOTE: You CAN declare your own model here instead of `PersistentBottomNavBarItem`.
  final ValueChanged<int> onItemSelected;

  CustomNavBarWidget({
    Key? key,
    required this.selectedIndex,
    required this.items,
    required this.onItemSelected,
  });

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
    return Container(
      alignment: Alignment.center,
      height: 60.0,
      child: Material(
        color: AppColors.backColor2,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Flexible(
                  child: item.icon,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Material(
                    type: MaterialType.transparency,
                    child: FittedBox(
                        child: Text(item.title!,
                            style:  TextStyle(
                                  color: isSelected ? AppColors.mainTextColor : AppColors.labelColor,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2,
                                  fontSize: 10.sp),
                            )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.backColor2,
        border: Border(top: BorderSide(width: 1,color: AppColors.mainBorderColor,))
      ),

      child: Container(
        width: double.infinity,
        height: 83.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items.map((item) {
            int index = items.indexOf(item);
            return Flexible(
              child: GestureDetector(
                onTap: () {
                  this.onItemSelected(index);
                },
                child: _buildItem(item, selectedIndex == index),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
