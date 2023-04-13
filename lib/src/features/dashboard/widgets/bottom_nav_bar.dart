import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pallet_mobile/src/core/app_utils/app_utils.dart';
import 'package:pallet_mobile/src/features/dashboard/model/bottom_nav_bar_model.dart';
import 'package:pallet_mobile/src/general_widgets/general_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomNavBar extends HookConsumerWidget {
  final List<NavBarModel> barItems;
  final Function(int) onBarTap;
  final int tabIndex;
  const BottomNavBar({
    Key? key,
    required this.barItems,
    required this.tabIndex,
    required this.onBarTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final selectedBarIndex = useState(0);
    bool largeScreen = MediaQuery.of(context).size.width > 800 ? true : false;

    return Container(
      color: AppColors.graylight2,
      height: 8.h,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: _buildBarItems(
          selectedBarIndex: selectedBarIndex,
          largeScreen: largeScreen,
          context: context,
        ),
      ),
    );
  }

  List<Widget> _buildBarItems({
    required ValueNotifier<int> selectedBarIndex,
    required bool largeScreen,
    required BuildContext context,
  }) {
    final textTheme = Theme.of(context).textTheme;
    List<Widget> bottombaritem = [];
    for (int i = 0; i < barItems.length; i++) {
      NavBarModel item = barItems[i];
      bool isSelected = tabIndex == i;
      bottombaritem.add(
        Expanded(
          child: MaterialButton(
            padding: EdgeInsets.zero,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            color: isSelected ? AppColors.primarylight : AppColors.graylight2,
            onPressed: () {
              selectedBarIndex.value = i;
              onBarTap(selectedBarIndex.value);
            },
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      isSelected ? item.selectedicon : item.icon,
                      color: isSelected
                          ? AppColors.graylight2
                          : AppColors.graylight12,
                    ),
                    Spacing.tinyHeight(),
                    Text(
                      item.text,
                      style: textTheme.headline4?.copyWith(
                        color: isSelected
                            ? AppColors.graylight2
                            : AppColors.graylight12,
                        fontSize: 12.sp,
                        fontWeight:
                            isSelected ? FontWeight.w500 : FontWeight.w400,
                      ),
                      textScaleFactor: 1,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
    return bottombaritem;
  }
}
