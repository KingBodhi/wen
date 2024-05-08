import 'package:flutter/material.dart';
import 'package:wen/theme/theme_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomAppBar({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isWideScreen = MediaQuery.of(context).size.width >= 800;

    // Define the underline color based on the theme
    Color underlineColor =
        themeManager.isDarkMode ? Colors.white : Colors.orange;

    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: themeManager.isDarkMode ? Colors.black : Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu,
            color: themeManager.isDarkMode ? Colors.white : Colors.black),
        onPressed: () => scaffoldKey.currentState?.openDrawer(),
      ),
      title: isWideScreen
          ? Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed('/'),
                  child: Image.asset(
                      'assets/wen${themeManager.isDarkMode ? "_d" : ""}.png',
                      height: 40.0),
                ),
                const SizedBox(width: 20),
                TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/about'),
                    child: Text("About",
                        style: TextStyle(
                            color: themeManager.isDarkMode
                                ? Colors.white
                                : Colors.black))),
                TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/meetup'),
                    child: Text("Meetup",
                        style: TextStyle(
                            color: themeManager.isDarkMode
                                ? Colors.white
                                : Colors.black))),
                TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/airdrop'),
                    child: Text("Airdrop",
                        style: TextStyle(
                            color: themeManager.isDarkMode
                                ? Colors.white
                                : Colors.black))),
                TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/tokenomics'),
                    child: Text("tokenomics",
                        style: TextStyle(
                            color: themeManager.isDarkMode
                                ? Colors.white
                                : Colors.black))),
                // TextButton(
                //     onPressed: () =>
                //         Navigator.pushNamed(context, '/contactUsPage'),
                //     child: Text("Contact Us",
                //         style: TextStyle(
                //             color: themeManager.isDarkMode
                //                 ? Colors.white
                //                 : Colors.black))),
                // TextButton(
                //     onPressed: () =>
                //         Navigator.pushNamed(context, '/careersPage'),
                //     child: Text("Careers",
                //         style: TextStyle(
                //             color: themeManager.isDarkMode
                //                 ? Colors.white
                //                 : Colors.black))),
              ],
            )
          : GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/'),
              child: Center(
                  child: Image.asset(
                      'assets/wen${themeManager.isDarkMode ? "_d" : ""}.png',
                      height: 40.0)),
            ),
      actions: [
        IconButton(
          icon: Icon(
              themeManager.isDarkMode ? Icons.wb_sunny : Icons.brightness_2,
              color: themeManager.isDarkMode ? Colors.white : Colors.black),
          onPressed: () {
            themeManager.themeMode == ThemeMode.light
                ? themeManager.changeTheme(ThemeMode.dark)
                : themeManager.changeTheme(ThemeMode.light);
          },
        ),
      ],
      centerTitle: !isWideScreen,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(4.0),
        child: Container(
          color: underlineColor,
          height: 1.0,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(
      kToolbarHeight + 2.0); // Adjusted for the underline height
}
