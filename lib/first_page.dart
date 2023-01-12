import 'package:flutter/material.dart';
import 'package:travel_application/News/show_news.dart';
import 'package:travel_application/account/account.dart';
import 'package:travel_application/bottom_navigation/show_bottom_navigation.dart';
import 'package:travel_application/menu/menu.dart';
import 'package:travel_application/place/show_place.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(248, 255, 255, 255),
      bottomNavigationBar: const ShowBottomNavigation(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Go Explore",
                    style: TextStyle(
                      color: Color(0xff1e1e1e),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Account()
                ],
              ),
              const Menu(),
              const ShowPlace(),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "News",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(
                        0xff1e1e1e,
                      ),
                    ),
                  ),
                  Text(
                    "see more",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue[400]!,
                    ),
                  ),
                ],
              ),
              const ShowNews(),
            ],
          ),
        ),
      ),
    );
  }
}
