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
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
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
                        'assets/airdrop.png',
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
                              'A Monumental Opportunity Awaits\n 2.5 Billion Token Airdrop',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
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
                              'Eligibility: To be eligible for the airdrop, users must simply register their wallet address. Earn additional rewards for engagement with our community through various channels. Prior participants and supporters will be considered automatically. For new members.',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Distribution: Tokens will be distributed directly to the wallets of eligible community members. The distribution process is designed to be transparent and fair, ensuring that every participant receives a share.',
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
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              // Submit email action goes here
                            },
                            child: Text('REGISTER WALLET'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  isDarkMode ? Colors.black : Colors.white,
                              backgroundColor:
                                  isDarkMode ? Colors.orange : Colors.orange,
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Sign up, engage, and secure your spot in one of the largest token airdrops in the crypto community. Be a part of Wen Moon Wen Lambo’s journey to redefine what it means to be a community-driven project.',
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
