import 'package:flutter/material.dart';
import 'package:pallet_mobile/src/core/app_utils/app_dimensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Spacing extends StatelessWidget {
  final double height;
  final double width;

  const Spacing.height(this.height) : width = AppDimension.zero;

  Spacing.tinyHeight() : this.height(0.5.h);
  Spacing.smallHeight() : this.height(1.h);
  Spacing.mediumHeight() : this.height(2.5.h);
  Spacing.bigHeight() : this.height(5.h);
  Spacing.largeHeight() : this.height(10.h);

  const Spacing.width(this.width) : height = AppDimension.zero;

  Spacing.tinyWidth() : this.width(0.5.w);
  Spacing.smallWidth() : this.width(1.w);
  Spacing.mediumWidth() : this.width(2.5.w);
  Spacing.bigWidth() : this.width(5.w);
  Spacing.largeWidth() : this.width(10.w);

  const Spacing.empty()
      : width = AppDimension.zero,
        height = AppDimension.zero;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, width: width);
  }
}
