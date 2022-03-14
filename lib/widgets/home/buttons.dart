import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

class Profilebutton extends StatefulWidget {
  const Profilebutton({Key? key}) : super(key: key);

  @override
  State<Profilebutton> createState() => _ProfilebuttonState();
}

class _ProfilebuttonState extends State<Profilebutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  _launchUrl('google.com');
                },
                child: Image(image: AssetImage('images/Twitter.png'))),
            SizedBox(
              width: 30,
            ),
            Image(image: AssetImage('images/Instagram.png')),
            SizedBox(
              width: 30,
            ),
            Image(image: AssetImage('images/Dribbble.png')),
            SizedBox(
              width: 30,
            ),
            Image(image: AssetImage('images/LinkedIn.png')),
            SizedBox(
              width: 30,
            ),
            Image(image: AssetImage('images/Github.png')),
            SizedBox(
              width: 30,
            ),
            Image(image: AssetImage('images/Dev.png')),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String urlString) async {
    if (await canLaunch(urlString)) {
      await launch(
        urlString,
        forceWebView: true,
      );
    } else {
      print("Can\'t Launch Url");
    }
  }
}
