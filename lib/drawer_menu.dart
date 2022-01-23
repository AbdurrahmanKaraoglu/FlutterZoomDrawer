import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter_zoomdrawer/main_screen.dart';
import 'package:flutter_zoomdrawer/menu_screen.dart';
import 'package:flutter_zoomdrawer/model/menu_item.dart';
import 'package:flutter_zoomdrawer/payment_page.dart';

class DrawerMenu extends StatefulWidget {
  DrawerMenu({Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  MenuItem currentItem = MenuItems.payment;
  final _drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _drawerController,
      style: DrawerStyle.Style1,
      mainScreen: getScreen(),
      menuScreen: Builder(builder: (context) {
        return MenuScreen(
          currentItem: currentItem,
          onSelectedItem: (item) {
            setState(() {
              currentItem = item;
            });
            ZoomDrawer.of(context)!.close();
          },
        );
      }),
      borderRadius: 24,
      showShadow: true,
      angle: -10,
      backgroundColor: Colors.grey.shade200,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.easeInCubic,
    );
  }

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.payment:
        return PaymentPage();
      case MenuItems.payment:
        return PaymentPage();
      case MenuItems.payment:
        return PaymentPage();
      case MenuItems.payment:
        return PaymentPage();
      case MenuItems.payment:
        return PaymentPage();
      case MenuItems.payment:
        return PaymentPage();
      default:
        return MainScreen();
    }
  }
}
