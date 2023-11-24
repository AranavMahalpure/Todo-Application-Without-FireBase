import 'bloc/forgot_password_bloc.dart';
import 'models/forgot_password_model.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/core/app_export.dart';
import 'package:todo_list/core/utils/validation_functions.dart';
import 'package:todo_list/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:todo_list/widgets/app_bar/appbar_title.dart';
import 'package:todo_list/widgets/app_bar/custom_app_bar.dart';
import 'package:todo_list/widgets/custom_elevated_button.dart';
import 'package:todo_list/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordBloc>(
        create: (context) => ForgotPasswordBloc(
            ForgotPasswordState(forgotPasswordModelObj: ForgotPasswordModel()))
          ..add(ForgotPasswordInitialEvent()),
        child: ForgotPasswordScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 31.h, vertical: 22.v),
                    child: Column(children: [
                      _buildPageHeader(context),
                      SizedBox(height: 37.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogoGray5001121x135,
                          height: 121.v,
                          width: 135.h),
                      SizedBox(height: 27.v),
                      Text("lbl_forgot_password".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 45.v),
                      BlocSelector<ForgotPasswordBloc, ForgotPasswordState,
                              TextEditingController?>(
                          selector: (state) => state.emailController,
                          builder: (context, emailController) {
                            return CustomTextFormField(
                                controller: emailController,
                                hintText: "lbl_your_email".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_email"
                                        .tr;
                                  }
                                  return null;
                                });
                          }),
                      SizedBox(height: 19.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 246.h,
                              margin: EdgeInsets.only(right: 64.h),
                              child: Text("msg_lorem_ipsum_dolor".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall!
                                      .copyWith(height: 1.67)))),
                      SizedBox(height: 7.v)
                    ]))),
            bottomNavigationBar: _buildStart(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 32.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTitle(
              text: "lbl_forgot_password".tr,
              margin: EdgeInsets.symmetric(horizontal: 35.h, vertical: 14.v))
        ]);
  }

  /// Section Widget
  Widget _buildPageHeader(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          width: 262.h,
          margin: EdgeInsets.only(right: 48.h),
          child: Text("msg_helping_others_means".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.displaySmall!.copyWith(height: 1.29))),
      Container(
          width: 245.h,
          margin: EdgeInsets.only(right: 65.h),
          child: Text("msg_if_you_are_always".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelLarge!.copyWith(height: 1.67)))
    ]);
  }

  /// Section Widget
  Widget _buildStart(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_start".tr,
        margin: EdgeInsets.only(left: 32.h, right: 32.h, bottom: 52.v),
        onPressed: () {
          onTapStart(context);
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapStart(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
