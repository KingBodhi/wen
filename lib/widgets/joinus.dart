import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class JoinUs extends StatelessWidget {
  const JoinUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    bool isDesktop = MediaQuery.of(context).size.width > 600;

    EdgeInsets padding = isDesktop
        ? const EdgeInsets.symmetric(horizontal: 100.0, vertical: 16)
        : const EdgeInsets.all(16);

    return Container(
      color: Colors.orange,
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'JOIN THE WEN 🚀 COMMUNITY',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'EMAIL',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0)),
                labelStyle: TextStyle(color: Colors.white),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Submit email action goes here
            },
            child: Text('SUBMIT'),
            style: ElevatedButton.styleFrom(
              foregroundColor: isDarkMode ? Colors.white : Colors.black,
              backgroundColor: isDarkMode ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.discord, color: Colors.white),
                onPressed: () async {
                  const url = 'https://discord.gg/9P2ahtxV';
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
              IconButton(
                icon: Icon(Icons.close, color: Colors.white),
                onPressed: () async {
                  const url = 'https://twitter.com/wenrunes';
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
              IconButton(
                icon: Icon(Icons.send, color: Colors.white),
                onPressed: () async {
                  const url = 'https://t.me/wenrunes';
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(body: const JoinUs()),
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.system,
  ));
}
