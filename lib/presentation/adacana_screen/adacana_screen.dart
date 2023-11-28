import 'bloc/adacana_bloc.dart';
import 'models/adacana_model.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/core/app_export.dart';

class AdacanaScreen extends StatelessWidget {
  const AdacanaScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AdacanaBloc>(
        create: (context) =>
            AdacanaBloc(AdacanaState(adacanaModelObj: AdacanaModel()))
              ..add(AdacanaInitialEvent()),
        child: AdacanaScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AdacanaBloc, AdacanaState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgLogo,
                            height: 325.v,
                            width: 238.h,
                            onTap: () {
                              onTapImgLogo(context);
                            })
                      ]))));
    });
  }

  /// Navigates to the loginOrSignupScreen when the action is triggered.
  onTapImgLogo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginOrSignupScreen,
    );
  }
}
