import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Pranali sakpal"),
            accountEmail: Text("pranalisakpal@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i2.wp.com/technewslit.com/sciencebusiness/wp-content/uploads/2018/07/HandsKeyboardPhone_Rawpixel-PexelsCom.jpg?ssl=1"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Pranali Sakpal"),
            subtitle: Text("Android Developer"),
            trailing: Icon(Icons.edit),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("pranalisakpal@gmail.com"),
            trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}
