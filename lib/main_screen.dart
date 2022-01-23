import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home Page'),
        leading: MenuWidget(),
      ),
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.menu),
      onPressed: () => ZoomDrawer.of(context)!.toggle(),
    );
  }
}
