// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:furniture_app/screens/home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _pageController; // marked late
  int _page = 2;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _page); // initialized here
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController, // use existing controller
        onPageChanged: onPageChanged,
        children: List.generate(4, (index) => Home()),
      ),
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).colorScheme.primary,
            colorScheme: Theme.of(context).colorScheme.copyWith(
              secondary: Theme.of(context).colorScheme.secondary,
            ),
            textTheme: Theme.of(context).textTheme.copyWith(
                  bodySmall: TextStyle(color: Colors.grey[500]),
            ),
         ),

        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _page,
          onTap: navigationTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Feather.home),
              label: "", // replaced deprecated title
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.heart),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.user),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.grid),
              label: "",
            ),
          ],
        ),
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }
}
