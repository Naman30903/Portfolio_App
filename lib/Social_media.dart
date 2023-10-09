import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_naman/Nav_bar.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialMediaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const NaviBar(),
            ),
          ),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Social Media Icons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialMediaIconButton(
                  icon: FontAwesomeIcons.instagram,
                  onPressed: () {
                    launchUr(
                        'https://www.instagram.com/your_instagram_profile');
                  },
                ),
                SocialMediaIconButton(
                  icon: FontAwesomeIcons.twitter,
                  onPressed: () {
                    launchUr('https://twitter.com/NamanJa30063956');
                  },
                ),
              ],
            ),
            const SizedBox(height: 20), // Add spacing between rows
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialMediaIconButton(
                  icon: FontAwesomeIcons.github,
                  onPressed: () {
                    launchUr('https://github.com/Naman30903');
                  },
                ),
                SocialMediaIconButton(
                  icon: FontAwesomeIcons.linkedin,
                  onPressed: () {
                    launchUr(
                        'https://www.linkedin.com/in/naman-jain-5b7455294');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  launchUr(String url,
      [LaunchMode mode = LaunchMode.externalApplication]) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url, mode: mode);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class SocialMediaIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  SocialMediaIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () => onPressed(),
        child: FaIcon(
          icon,
          size: 70,
        ),
      ),
    );
  }
}
