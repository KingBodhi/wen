import 'package:flutter/material.dart';
import 'package:wen/widgets/drawer.dart';
import '../widgets/appbar.dart';
import '../widgets/joinus.dart';
import '../widgets/footer.dart';

class Airdrop extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Airdrop({super.key});

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
                              'AIRDROP',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '2.5 Billion Token Airdrop\n\nA Monumental Opportunity Awaits',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'At Wen Moon Wen Lambo, we\'re not just building a community; we\'re empowering it. As part of our commitment to distribute wealth and opportunities within our network, we are thrilled to announce the launch of our massive 2.5 billion token airdrop—constituting 25% of our total token supply.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'How It Works',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Eligibility: To be eligible for the airdrop, users must sign up, verify their account, and engage with our community through various channels. Prior participants and supporters will be considered automatically. For new members, details regarding the sign-up process will be available on our platform.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Distribution: Tokens will be distributed directly to the wallets of eligible community members. The distribution process is designed to be transparent and fair, ensuring that every participant receives their share without any discrepancies.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Timeline: The airdrop event dates will be announced shortly. Stay tuned to our official channels for the latest updates and instructions.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Join Us Today\n\nSign up, engage, and secure your spot in one of the largest token airdrops in the crypto community. Be a part of Wen Moon Wen Lambo’s journey to redefine what it means to be a community-driven project.',
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
