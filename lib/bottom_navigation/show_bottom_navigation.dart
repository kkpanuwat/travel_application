import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ShowBottomNavigation extends StatefulWidget {
  const ShowBottomNavigation({super.key});

  @override
  State<ShowBottomNavigation> createState() => _ShowBottomNavigationState();
}

class _ShowBottomNavigationState extends State<ShowBottomNavigation> {
  int userSelect = 0;
  List<Icon> menus = [
    Icon(
      Icons.home,
      size: 30,
      color: Colors.blue[400],
    ),
    Icon(
      Icons.favorite,
      size: 30,
      color: Colors.blue[400],
    ),
    Icon(
      Icons.newspaper,
      size: 30,
      color: Colors.blue[400],
    ),
    Icon(
      Icons.account_circle,
      size: 30,
      color: Colors.blue[400],
    )
  ];

  Widget createBottomNavigation() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: menus.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.centerLeft,
          width: (MediaQuery.of(context).size.width - 50) / menus.length,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              elevation: 0.0,
            ),
            onPressed: () {
              userSelect = index;
              setState(() {});
            },
            child: Column(
              children: [
                menus[index],
                userSelect == index
                    ? Container(
                        margin: const EdgeInsets.only(
                          top: 5,
                        ),
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(100),
                        ),
                      )
                    : const SizedBox(
                        width: 10,
                        height: 10,
                      )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.145,
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            size.width * .05,
          ),
          color: Colors.white,
        ),
        child: createBottomNavigation(),
      ),
    );
  }
}
