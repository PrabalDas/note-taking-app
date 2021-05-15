import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageasset = 'assets/images/_DSC9116-01.jpeg';
    return Drawer(
      elevation: 1,
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple[400]),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(imageasset),
                ),
                // Image.asset('assets/images/_DSC9116-01.jpeg'),
                accountName: Text(
                  'Prabal Das',
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text('Prabaldas94059@gmail.com',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                'Home',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text(
                'My Profile',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.info_circle, color: Colors.white),
              title: Text(
                'About EaseTech',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
