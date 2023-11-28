import 'bloc/termsandconditions_bloc.dart';
import 'models/termsandconditions_model.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/core/app_export.dart';
import 'package:todo_list/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:todo_list/widgets/app_bar/custom_app_bar.dart';

class TermsandconditionsScreen extends StatelessWidget {
  const TermsandconditionsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TermsandconditionsBloc>(
        create: (context) => TermsandconditionsBloc(TermsandconditionsState(
            termsandconditionsModelObj: TermsandconditionsModel()))
          ..add(TermsandconditionsInitialEvent()),
        child: TermsandconditionsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<TermsandconditionsBloc, TermsandconditionsState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.h, vertical: 50.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 13.v),
                        SizedBox(
                            width: 155.h,
                            child: Text("msg_terms_and_conditions".tr,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.headlineMedium!
                                    .copyWith(height: 1.36))),
                        SizedBox(height: 63.v),
                        Container(
                            width: 285.h,
                            margin: EdgeInsets.only(right: 25.h),
                            child: Text("msg_lorem_ipsum_dolor2".tr,
                                maxLines: 20,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallOnPrimary_1
                                    .copyWith(height: 2.00)))
                      ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(32.h, 16.v, 319.h, 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
