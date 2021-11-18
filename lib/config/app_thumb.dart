import 'package:flutter/material.dart';
import 'app_colors.dart';

final ThemeData theme = ThemeData(
  primaryColor: AppColors.primary, // 主题色
  scaffoldBackgroundColor: AppColors.page, // 脚手架下的页面背景色
  indicatorColor: AppColors.active, // 选项卡栏中所选选项卡指示器的颜色。
  // ElevatedButton 主题
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      // 文字颜色
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.white;
        } else {
          return null;
        }
      }),
      // 背景色
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return AppColors.danger.withOpacity(0.5);
        } else {
          return AppColors.danger;
        }
      }),
    ),
  ),
  accentColor: AppColors.primary, // 小部件的前景色（旋钮，文本，过度滚动边缘效果等）
  splashColor: Colors.transparent, // 取消水波纹效果
  highlightColor: Colors.transparent, // 取消水波纹效果
  hoverColor: Colors.white.withOpacity(0.5),
  textTheme: TextTheme(
    bodyText2: TextStyle(
      color: AppColors.unactive, // 文字颜色
    ),
  ),
  // tabbar的样式
  tabBarTheme: TabBarTheme(
    unselectedLabelColor: AppColors.unactive,
    indicatorSize: TabBarIndicatorSize.label,
    labelStyle: TextStyle(
      fontSize: 18,
    ),
    labelPadding: EdgeInsets.symmetric(horizontal: 12),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.nav,
    elevation: 0,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.nav,
    selectedItemColor: AppColors.active,
    unselectedItemColor: AppColors.unactive,
    selectedLabelStyle: TextStyle(
      fontSize: 12,
    ),
  ),
);
