import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);
  final imgURL = "https://mitshah2406.github.io/images/profilephoto.png";
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      decoration: BoxDecoration(color: Colors.deepPurpleAccent),
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgURL),
                ),
                accountName: Text("Mit Shah"),
                accountEmail: Text("mitshah2406@gmail.com"),
              )),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.info_circle,
              color: Colors.white,
            ),
            title: Text(
              "About",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.phone,
              color: Colors.white,
            ),
            title: Text(
              "Contact Us",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
