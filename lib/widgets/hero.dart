import 'package:flutter/material.dart';

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
            // Center the column in the PageView
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Wen Moon',
                  style: TextStyle(
                    fontSize: 48, // Increased font size for 'Wen Moon'
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                SizedBox(
                    height: 30), // Increased spacing to balance larger text
                Text(
                  'Wen Lambo',
                  style: TextStyle(
                    fontSize: 48, // Increased font size for 'Wen Lambo'
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                SizedBox(height: 40), // Increased space before the button
                ElevatedButton(
                  onPressed: () {
                    // Add your action for the button press here
                  },
                  child: Text('MINT'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: isDarkMode ? Colors.orange : Colors.orange,
                    padding: EdgeInsets.symmetric(
                        horizontal: 60,
                        vertical: 25), // Larger padding for the button
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
