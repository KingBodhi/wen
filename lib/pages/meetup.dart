import 'package:flutter/material.dart';
import 'package:wen/widgets/drawer.dart';
import '../widgets/appbar.dart';
import '../widgets/joinus.dart';
import '../widgets/footer.dart';

class Meetup extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Meetup({super.key});

  @override
  Widget build(BuildContext context) {
    // Determine if the device is a desktop based on screen width.
    bool isDesktop = MediaQuery.of(context).size.width > 600;
    // Set padding dynamically based on the screen width.
    double horizontalPadding = isDesktop ? 100.0 : 20.0;

    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(scaffoldKey: _scaffoldKey),
      ),
      drawer: const CustomDrawer(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: horizontalPadding, vertical: 16),
                      child: Image.asset(
                        'assets/meet.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'JOIN US AT OUR INAUGURAL MEETUP',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'We are thrilled to announce the very first Wen Moon Wen Lambo meetup, set to coincide with the BTC 24 Conference. This premiere event will take place on July 25th in the vibrant city of Nashville, TN. It’s not just a meetup; it’s the beginning of something extraordinary—a series of gatherings that blend the passion for supercars with the revolutionary spirit of cryptocurrency.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 8),
                            child: Text(
                              'Event Details\nDate: July 25th\nLocation: Nashville, TN\nVenue: Specific details about the venue will be shared closer to the event date.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Reserve Your Spot\n\nSpaces are limited, and the interest is high. Ensure you reserve your spot to be part of this landmark event. Registration details and more information will be provided soon. Keep an eye on our website and social media channels for updates.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          JoinUs(),
                        ],
                      ),
                    ),
                    const Footer(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
