import 'package:flutter/material.dart';
import 'package:todo_list/core/app_export.dart';
import 'package:todo_list/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarLeadingIconbutton extends StatelessWidget {
  AppbarLeadingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 24.adaptSize,
          width: 24.adaptSize,
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowLeft,
          ),
        ),
      ),
    );
  }
}
