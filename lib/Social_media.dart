import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_naman/Nav_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaPage extends StatelessWidget {
  // SocialMediaPage({super.key})
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
            icon: const Icon(Icons.arrow_back)),
        title: const Text('Social Media Icons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.instagram),
              onPressed: () {
                _launchURL('https://www.facebook.com/your_facebook_profile');
              },
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.twitter),
              onPressed: () {
                _launchURL('https://twitter.com/NamanJa30063956');
              },
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.github),
              onPressed: () {
                _launchURL('https://github.com/Naman30903');
              },
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.linkedin),
              onPressed: () {
                _launchURL('https://www.linkedin.com/in/naman-jain-5b7455294');
              },
            )
          ],
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await (canLaunch(url))) {
      await launch(url);
    } else {
      throw 'Server error or Network error';
    }
  }
}
