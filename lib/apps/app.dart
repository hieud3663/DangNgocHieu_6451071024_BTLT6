import 'package:flutter/material.dart';
import 'package:flutter_baitap_chuong7/view/10/home_theme.dart';
import 'package:flutter_baitap_chuong7/view/10/settings_theme_view.dart';
import 'package:flutter_baitap_chuong7/view/2/home_profile_view.dart';
import 'package:flutter_baitap_chuong7/view/2/profile_view.dart';
import 'package:flutter_baitap_chuong7/view/6/home_stack.dart';
import 'package:flutter_baitap_chuong7/view/6/page1_stack..dart';
import 'package:flutter_baitap_chuong7/view/6/page2_stack.dart';
import 'package:flutter_baitap_chuong7/view/7/home_order.dart';
import 'package:flutter_baitap_chuong7/view/7/order_view.dart';
import '../view/1/about_view.dart';
import '../view/1/home_view.dart';
import '../view/8/home_confirm.dart';
import '../view/9/home_article.dart';
import '../view/dashboard/dashboard_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardScreen(),
        '/home-about': (context) => const HomeView(),
        '/about': (context) => const AboutView(),
        '/home-profile': (context) => const HomeProfileView(),
        '/profile': (context) => const ProfileView(),
        '/home_stack': (context) => const HomeStack(),
        '/page1_stack': (context) => const Page1Stack(),
        '/page2_stack': (context) => const Page2Stack(),
        '/home_order': (context) => const HomeOrderView(),
        '/order': (context) => const OrderView(),
        '/home_confirm': (context) => const HomeConfirmView(),
        '/home_article': (context) => const HomeArticleView(),
        '/home_theme': (context) => const HomeThemeView(),
        '/settings_theme': (context) => const SettingsThemeView(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      builder: (context, child) => Stack(
        children: [
          child!,
          Positioned(
            top: MediaQuery.of(context).padding.top + 6,
            left: 10,
            child: const Text(
              '6451071024 - Đặng Ngọc Hiếu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
