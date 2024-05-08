import 'package:flutter/material.dart';

class Roadmap extends StatelessWidget {
  const Roadmap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 600;
    ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'Rocket Trajectory',
            style: TextStyle(
              color: theme.brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          if (isDesktop)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: infoContainers(isDesktop: isDesktop, context: context),
            )
          else
            Column(
              children: infoContainers(isDesktop: isDesktop, context: context),
            ),
        ],
      ),
    );
  }

  List<Widget> infoContainers(
      {required bool isDesktop, required BuildContext context}) {
    ThemeData theme = Theme.of(context);
    double containerWidth = isDesktop
        ? MediaQuery.of(context).size.width / 3 - 40
        : double.infinity;

    List<Map<String, String>> data = [
      {
        'title': 'Establish the Wen Moon Wen Lambo Foundation',
        'buttonText': 'Tokenomics',
      },
      {
        'title': 'WEN 🚀 Supercar Meetups',
        'buttonText': 'Meetup',
      },
      {
        'title': '2.5 BILLION WEN Airdrop',
        'buttonText': 'Airdrop',
      },
    ];

    return data.map((item) {
      return Container(
        width: containerWidth,
        child: InfoContainer(item: item, context: context),
      );
    }).toList();
  }
}

class InfoContainer extends StatelessWidget {
  final Map<String, String> item;
  final BuildContext context;

  const InfoContainer({Key? key, required this.item, required this.context})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            item['title']!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              // Navigate based on the button text
              String routeName = '/' + item['buttonText']!.toLowerCase();
              Navigator.pushNamed(context, routeName);
            },
            child: Text(
              item['buttonText']!,
              style: TextStyle(
                color: theme.brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              foregroundColor: theme.brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
              backgroundColor: theme.brightness == Brightness.dark
                  ? Colors.black
                  : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(backgroundColor: Colors.orange[600], body: const Roadmap()),
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    themeMode:
        ThemeMode.system, // Adjust based on device settings or provide a toggle
  ));
}
