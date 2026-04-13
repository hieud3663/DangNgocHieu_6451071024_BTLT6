import 'package:flutter/material.dart';
import 'package:flutter_baitap_chuong7/view/3/home_setting.dart';
import 'package:flutter_baitap_chuong7/view/4/product_list_view.dart';
import 'package:flutter_baitap_chuong7/view/5/home_pick_color.dart';
import 'package:flutter_baitap_chuong7/view/6/home_stack.dart';
import 'package:flutter_baitap_chuong7/view/7/home_order.dart';
import 'package:flutter_baitap_chuong7/view/8/home_confirm.dart';
import 'package:flutter_baitap_chuong7/view/9/home_article.dart';
import 'package:flutter_baitap_chuong7/view/10/home_theme.dart';
import '../../../models/dashboard_item.dart';
import '../../../widget/dashboard_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      DashboardItem(
        icon: Icons.touch_app,
        iconColor: Colors.blue,
        label: 'Bài 1: Home -> About (Named Route)',
        onTap: () => Navigator.pushNamed(context, '/home-about'),
      ),
      DashboardItem(
        icon: Icons.colorize,
        iconColor: Colors.red,
        label: 'Bài 2: Form thông tin cá nhân',
        onTap: () => Navigator.pushNamed(context, '/home-profile'),
      ),
      DashboardItem(
        icon: Icons.pan_tool,
        iconColor: Colors.green,
        label: 'Bài 3: Home -> Setting Screen (MaterialPageRoute)',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => HomeSettingView()),
        ),
      ),
      DashboardItem(
        icon: Icons.pin,
        iconColor: Colors.orange,
        label: 'Bài 4: Product List',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ProductListView()),
        ),
      ),
      DashboardItem(
        icon: Icons.ads_click,
        iconColor: Colors.purple,
        label: 'Bài 5: Pick Color Screen',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const HomePickColorView()),
        ),
      ),
      DashboardItem(
        icon: Icons.circle,
        iconColor: Colors.cyan,
        label: 'Bài 6: Navigation Stack Management',
        onTap: () => Navigator.pushNamed(context, '/home_stack'),
      ),
      DashboardItem(
        icon: Icons.shopping_bag,
        iconColor: Colors.amber,
        label: 'Bài 7: Order Screen',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const HomeOrderView()),
        ),
      ),
      DashboardItem(
        icon: Icons.delete_forever,
        iconColor: Colors.indigo,
        label: 'Bài 8: Confirm Screen',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const HomeConfirmView()),
        ),
      ),
      DashboardItem(
        icon: Icons.article,
        iconColor: Colors.pink,
        label: 'Bài 9: Article List',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const HomeArticleView()),
        ),
      ),
      DashboardItem(
        icon: Icons.dark_mode,
        iconColor: Colors.brown,
        label: 'Bài 10: Settings + Theme',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const HomeThemeView()),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: items.map((item) => DashboardCard(item: item)).toList(),
        ),
      ),
    );
  }
}
