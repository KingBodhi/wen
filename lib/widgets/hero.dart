import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroWidget extends StatelessWidget {
  final PageController pageController;
  final double firstFoldHeight;

  HeroWidget({
    Key? key,
    required this.pageController,
    required this.firstFoldHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    bool isDarkMode = theme.brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      height: firstFoldHeight, // Dynamically set the height
      decoration: BoxDecoration(
        color: isDarkMode
            ? Colors.black
            : Colors.white, // Adjust background color based on theme
        image: DecorationImage(
          image: AssetImage(
              isDarkMode ? "hero_image_none.png" : "hero_image_none.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: PageView(
        controller: pageController,
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Wen Moon',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Wen Lambo',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () async {
                    const url = 'https://luminex.io/runes/mint';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url));
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text('MINT'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 25),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
