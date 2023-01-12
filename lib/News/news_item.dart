import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatefulWidget {
  const NewsItem({super.key});

  @override
  State<NewsItem> createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(
        20,
      ),
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      width: size.width,
      height: size.height * .14,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            .03 * size.width,
          ),
          color: Colors.white),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(
              right: 30,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                .03 * size.width,
              ),
              child: SizedBox(
                width: size.height * .1,
                height: size.height * .1,
                child: Image.network(
                  "https://www.phuketcity.go.th/files/com_travel/2019-05_cb9d693904c2617.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            // color: Colors.red,
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Patong beach",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff1e1e1e),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: size.width * .5,
                  child: const Text(
                      "Patong Beach is the most popular beach resort town in Phuket, with a 3 km long beach and an immense choice of hotels, restaurants",
                      maxLines: 2),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
