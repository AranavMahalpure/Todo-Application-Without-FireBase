import 'package:flutter/material.dart';
import 'package:todo_list/presentation/adacana_screen/adacana_screen.dart';
import 'package:todo_list/presentation/login_or_signup_screen/login_or_signup_screen.dart';
import 'package:todo_list/presentation/signup_screen/signup_screen.dart';
import 'package:todo_list/presentation/login_screen/login_screen.dart';
import 'package:todo_list/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:todo_list/presentation/home_screen/home_screen.dart';
import 'package:todo_list/presentation/personality_screen/personality_screen.dart';
import 'package:todo_list/presentation/work_today_screen/work_today_screen.dart';
import 'package:todo_list/presentation/wish_list_screen/wish_list_screen.dart';
import 'package:todo_list/presentation/settings_screen/settings_screen.dart';
import 'package:todo_list/presentation/language_screen/language_screen.dart';
import 'package:todo_list/presentation/termsandconditions_screen/termsandconditions_screen.dart';
import 'package:todo_list/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String adacanaScreen = '/adacana_screen';

  static const String loginOrSignupScreen = '/login_or_signup_screen';

  static const String signupScreen = '/signup_screen';

  static const String loginScreen = '/login_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String homeScreen = '/home_screen';

  static const String personalityScreen = '/personality_screen';

  static const String workTodayScreen = '/work_today_screen';

  static const String wishListScreen = '/wish_list_screen';

  static const String settingsScreen = '/settings_screen';

  static const String languageScreen = '/language_screen';

  static const String termsandconditionsScreen = '/termsandconditions_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        adacanaScreen: AdacanaScreen.builder,
        loginOrSignupScreen: LoginOrSignupScreen.builder,
        signupScreen: SignupScreen.builder,
        loginScreen: LoginScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        homeScreen: HomeScreen.builder,
        personalityScreen: PersonalityScreen.builder,
        workTodayScreen: WorkTodayScreen.builder,
        wishListScreen: WishListScreen.builder,
        settingsScreen: SettingsScreen.builder,
        languageScreen: LanguageScreen.builder,
        termsandconditionsScreen: TermsandconditionsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: AdacanaScreen.builder
      };
}
