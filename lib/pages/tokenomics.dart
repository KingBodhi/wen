import 'package:flutter/material.dart';
import 'package:wen/widgets/drawer.dart';
import '../widgets/appbar.dart';
import '../widgets/footer.dart';

class Tokenomics extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Tokenomics({super.key});

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
                        'assets/wenn.png', // Ensure you have 'winn.png' in your assets directory and listed in pubspec.yaml
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
                              'TOKENOMICS',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'A Transparent and Equitable Distribution Model',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'At Wen Moon Wen Lambo, our commitment to the community and sustainable growth is reflected in our transparent and strategic token distribution model. Understanding our tokenomics is crucial for both potential participants and long-standing members. Here’s how our tokens are distributed:',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '12.5% Founders and Insiders: Allocated to the founding team and insiders who have been instrumental in conceptualizing, developing, and growing the Wen Moon Wen Lambo project. This allocation is a testament to our long-term commitment and belief in the project\'s success.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '12.5% Foundation: These tokens are reserved for the Wen Moon Wen Lambo Foundation, which supports ongoing development, community initiatives, and future expansions. The foundation\'s tokens ensure a steady flow of resources for project innovation and community events.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '25% Airdrop: Committed to rewarding our early supporters and community members, a quarter of our tokens will be distributed through airdrops. These tokens are designed to incentivize participation and engagement within the community from the outset.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '50% Free Mint: In an unprecedented move to maximize community involvement and ownership, half of all tokens will be available through a free mint process. This approach ensures that every enthusiast and supporter has a fair chance to participate directly in the project without any barriers.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Why Our Tokenomics Matter\n\nOur token distribution is designed to ensure long-term viability and community benefits. By balancing the needs of our founders and insiders with the interests of our broader community, we create a stable and inclusive environment.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Join us in this exciting adventure where every token holds the promise of growth, community, and exhilarating experiences. With Wen Moon Wen Lambo, you’re not just investing in a token; you’re becoming part of a movement that drives towards the future of cryptocurrency and supercar culture combined.',
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
