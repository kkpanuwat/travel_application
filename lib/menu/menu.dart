import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int userSelect = 0;
  List<String> listMenu = [
    "For you",
    "national park",
    "museum",
    "theme park",
  ];

  Widget createMenu() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listMenu.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.only(right: 30),
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
              setState(
                () {},
              );
            },
            child: Column(
              children: [
                Text(
                  StringUtils.capitalize(listMenu[index]),
                  style: TextStyle(
                    fontSize: 20,
                    color: userSelect == index
                        ? Colors.blue[400]
                        : Colors.blue[200],
                  ),
                ),
                userSelect == index
                    ? Container(
                        margin: const EdgeInsets.only(
                          top: 8,
                        ),
                        width: 10,
                        height: 10,
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
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(
        top: 30,
      ),
      width: size.width,
      height: 50,
      child: createMenu(),
    );
  }
}
