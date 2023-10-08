import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_naman/About_me.dart';
import 'package:portfolio_naman/Social_media.dart';

class NaviBar extends StatelessWidget {
  const NaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Naman Jain'),
            accountEmail: const Text('namanjain30903@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('profile.jpg'),
              ),
            ),
            decoration: const BoxDecoration(
                color: Colors.deepPurple,
                image: DecorationImage(
                  image: AssetImage('assets/backgd.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text("About Me"),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const AboutMeScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.diagramProject),
            title: const Text("Projects"),
            onTap: () => print('Tapped'),
          ),
          // ListTile(
          //   leading: const FaIcon(FontAwesomeIcons.certificate),
          //   title: const Text("Certificates"),
          //   onTap: () => print('Tapped'),
          // ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.github),
            title: const Text("Social Media"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => SocialMediaPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.phone),
            title: const Text("Contact Me"),
            onTap: () => print('Tapped'),
          ),
        ],
      ),
    );
  }
}
