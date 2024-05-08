import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Trade extends StatelessWidget {
  const Trade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 600;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // Set different image sizes for mobile and desktop
    double imageHeight = isDesktop ? screenHeight * 0.4 : screenHeight * 0.3;
    double imageWidth = imageHeight * 4 / 3; // Maintain 4:3 aspect ratio

    Widget content = isDesktop
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: imageContainer(imageHeight, imageWidth),
              ),
              Expanded(
                child: textAndButton(context),
              ),
            ],
          )
        : Column(
            children: [
              imageContainer(imageHeight, imageWidth),
              textAndButton(context),
            ],
          );

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: screenHeight * 0.5),
        child: content,
      ),
    );
  }

  Widget imageContainer(double height, double width) {
    return Center(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/wenn.png'), // Load image from assets
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget textAndButton(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'WEN 🚀\n\nBUY, SELL, AND TRADE BITCOIN INSCRIBED WEN 🚀 ON MAGIC EDEN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          onPressed: () async {
            const url = 'https://magiceden.io/runes';
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url));
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Text('MAGIC EDEN'),
          style: TextButton.styleFrom(
            foregroundColor: theme.brightness == Brightness.dark
                ? Colors.black
                : Colors.white, // Text color based on theme
            backgroundColor:
                Colors.orange, // Consistent background color for clarity
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(body: const Trade()),
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    themeMode:
        ThemeMode.system, // Adjust based on device settings or provide a toggle
  ));
}
