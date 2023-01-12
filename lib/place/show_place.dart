import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_application/place/place.dart';
import 'package:travel_application/place/place_item.dart';

class ShowPlace extends StatefulWidget {
  const ShowPlace({super.key});

  @override
  State<ShowPlace> createState() => _ShowPlaceState();
}

class _ShowPlaceState extends State<ShowPlace> {
  List<Place> items = [
    Place(
      id: "place001",
      name: "Phuket",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo2yI80gjJEIt_T0qF9kvEGXStthZOvcOhBg&usqp=CAU",
      status: true,
    ),
    Place(
      id: "place001",
      name: "Khao Yai",
      image:
          "https://www.khaoyainationalpark.com/application/files/4116/2306/4855/slide_.jpg",
      status: false,
    ),
    Place(
      id: "place001",
      name: "Phu Thap Boek",
      image:
          "https://s359.kapook.com/pagebuilder/585feaae-1763-4a88-b183-119494e3354d.jpg",
      status: false,
    ),
    Place(
      id: "place001",
      name: "Phuket",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo2yI80gjJEIt_T0qF9kvEGXStthZOvcOhBg&usqp=CAU",
      status: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      width: size.width,
      height: size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return PlaceItem(
            item: items[index],
          );
        },
      ),
    );
  }
}
