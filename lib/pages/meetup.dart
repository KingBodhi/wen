import 'package:flutter/material.dart';
import 'package:wen/widgets/drawer.dart';
import '../widgets/appbar.dart';
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
                        'assets/wenn.png',
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
                              'Experience the Thrill of Our First Supercar Gathering',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
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
                              'Why You Should Attend',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Network with Like-Minded Enthusiasts: Connect with fellow Bitcoin and supercar aficionados in an environment that’s charged with excitement and a shared passion for speed and innovation.\nExclusive Insights: Gain unique insights into the future of cryptocurrency and how it intersects with the lifestyle of supercar enthusiasts.\nShowcase Your Supercar: Bring your supercar and show it off to an audience that appreciates what it means to own such marvels of engineering.\nSpecial Activities: Enjoy a range of activities planned to make this meetup memorable, including guest speakers from the crypto and automotive industries, a showcase of the latest supercar models, and more.',
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
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Be Part of History\n\nDon’t miss out on the opportunity to be part of the inaugural Wen Moon Wen Lambo meetup. Whether you’re a seasoned crypto investor, a supercar enthusiast, or someone curious about either, this event promises to be a rewarding and exhilarating experience.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
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
