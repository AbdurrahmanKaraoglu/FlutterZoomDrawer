import 'package:flutter/material.dart';
import 'package:flutter_zoomdrawer/model/menu_item.dart';

class MenuItems {
  static const payment = MenuItem('Payment', Icons.payment);
  static const promos = MenuItem('promos', Icons.card_giftcard);
  static const notification = MenuItem('notification', Icons.notification_add);
  static const help = MenuItem('help', Icons.help);
  static const aboutUs = MenuItem('aboutUs', Icons.info_outline);
  static const rateUs = MenuItem('rateUs', Icons.star_border);

  static const all = <MenuItem>[
    payment,
    promos,
    notification,
    help,
    aboutUs,
    rateUs,
  ];
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key, required this.currentItem, required this.onSelectedItem}) : super(key: key);

  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            DrawerHeader(
              child: Column(children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/74272647?v=4'),
                  radius: 50,
                ),
              ]),
            ),
            Spacer(),
            ...MenuItems.all.map(buildMenuItem).toList(),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(MenuItem item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selectedTileColor: Colors.black26,
          selected: currentItem == item,
          minLeadingWidth: 20,
          leading: Icon(item.icon),
          title: Text(item.title),
          onTap: () {},
        ),
      );
}
