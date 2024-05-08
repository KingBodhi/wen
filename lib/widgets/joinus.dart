import 'package:flutter/material.dart';

class JoinUs extends StatelessWidget {
  const JoinUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Determine the theme mode
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    // Check if the device is a desktop
    bool isDesktop = MediaQuery.of(context).size.width > 600;

    // Conditional padding for desktop
    EdgeInsets padding = isDesktop
        ? const EdgeInsets.symmetric(horizontal: 100.0, vertical: 16)
        : const EdgeInsets.all(16);

    return Container(
      color: Colors.orange, // Set background color
      padding: padding, // Use conditional padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'JOIN THE WEN 🚀 COMMUNITY',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white, // Text visibility on background
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'EMAIL',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Normal border
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0), // Border when TextField is focused
                ),
                labelStyle: TextStyle(
                  color: Colors.white, // For better visibility
                ),
              ),
              style: TextStyle(
                color: Colors.white, // Text color inside the text field
              ),
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
                onPressed: () {
                  // Discord action goes here
                },
              ),
              IconButton(
                icon: Icon(Icons.close, color: Colors.white),
                onPressed: () {
                  // Close action goes here
                },
              ),
              IconButton(
                icon: Icon(Icons.send, color: Colors.white),
                onPressed: () {
                  // Send action goes here
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
    themeMode:
        ThemeMode.system, // Adjust based on device settings or provide a toggle
  ));
}
