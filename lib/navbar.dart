import 'package:flutter/material.dart';
import 'package:flutter_profile2/loginPage.dart';
import 'package:flutter_profile2/main.dart';
import 'package:flutter_profile2/profile.dart';

class navb extends StatelessWidget {
  const navb({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Benjachok 108'),
            accountEmail: Text('--------'),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    image: AssetImage('images/monkey2.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MyApp())),
          ),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text('Login'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const loginPage())),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MyProfile())),
          )
        ],
      ),
    );
  }
}
