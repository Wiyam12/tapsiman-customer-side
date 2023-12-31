import 'package:customer/main.dart';
import 'package:customer/pages/account.dart';
import 'package:customer/pages/cart.dart';
import 'package:customer/pages/favorites.dart';
import 'package:customer/pages/orders.dart';
import 'package:customer/pages/playandwin.dart';
import 'package:customer/pages/vouchers.dart';
import 'package:flutter/material.dart';

class SideNavBar extends StatefulWidget {
  const SideNavBar({super.key});

  @override
  State<SideNavBar> createState() => _SideNavBarState();
}

class _SideNavBarState extends State<SideNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Juan Miguel Tampicoss',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                'juanmigueltampico@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(color: Color(0xFFd298a6)),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: Image.asset(
                      'images/icons/user.png',
                      width: 50,
                    ),
                    title: Text(
                      'Account',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AccountPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'images/icons/coins.png',
                      width: 50,
                    ),
                    title: Text(
                      'Play & Win',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PlayAndWinPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'images/icons/voucher.png',
                      width: 50,
                    ),
                    title: Text(
                      'Vouchers',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => VouchersPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'images/icons/touch.png',
                      width: 50,
                    ),
                    title: Text(
                      'Favorites',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FavoritesPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'images/icons/completed-task.png',
                      width: 50,
                    ),
                    title: Text(
                      'My Orders',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => OrdersPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'images/icons/trolley.png',
                      width: 50,
                    ),
                    title: Text(
                      'Cart',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CartPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Divider(), // Add a divider between the main items and Logout
            ListTile(
              leading: Image.asset(
                'images/icons/switch.png',
                width: 40,
              ),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
