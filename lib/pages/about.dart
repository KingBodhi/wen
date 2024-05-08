import 'package:flutter/material.dart';
import 'package:wen/widgets/drawer.dart';
import '../widgets/appbar.dart';
import '../widgets/joinus.dart';
import '../widgets/footer.dart';

class About extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  About({super.key});

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
                        'assets/about.png',
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
                              'Empowering the Bitcoin Community, One Supercar at a Time',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Welcome to Wen Moon Wen Lambo, a groundbreaking Bitcoin Runes Project designed to bring together the thrill of supercars with the transformative potential of Bitcoin. Our mission is to enrich the lives of our community members through exclusive supercar meetups, exhilarating supercar rally experiences, and enticing merchandise sweepstakes.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'What We Do',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'At Wen Moon Wen Lambo, we\'re more than just a project; we\'re a movement. By blending the world of cryptocurrency with the high-octane lifestyle of supercar enthusiasts, we offer unique opportunities that are unavailable anywhere else:',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Supercar Meetups: Connect with fellow crypto enthusiasts and supercar aficionados in stunning locations as you showcase your vehicles and share insights into the latest trends in Bitcoin and blockchain technology.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Supercar Rally Experiences: Participate in epic road trips across scenic routes with a fleet of high-performance cars. These rallies are not only a test of endurance and skill but also a celebration of our community’s passion for speed and innovation.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Merchandise Sweepstakes: Stand a chance to win exclusive Wen Moon Wen Lambo branded merchandise through our regularly held sweepstakes. From apparel to accessories, these items are designed to make a statement.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Our Vision',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Our vision is clear: to provide a platform where the excitement of owning and experiencing supercars meets the cutting-edge advancements of cryptocurrency. We aim to create a space where learning, sharing, and growth go hand in hand with fun and excitement.',
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
