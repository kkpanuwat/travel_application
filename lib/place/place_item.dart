// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:travel_application/place/place.dart';

class PlaceItem extends StatefulWidget {
  Place item;
  PlaceItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<PlaceItem> createState() => _PlaceItemState();
}

class _PlaceItemState extends State<PlaceItem> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
      ),
      child: Stack(
        children: [
          Container(
            width: size.height * .3,
            height: size.height * .3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                size.width * .05,
              ),
              color: Colors.blue[200],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                size.width * .05,
              ),
              child: Image.network(
                widget.item.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: size.height * .3,
            height: size.height * .3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                size.width * .05,
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(
                    0.7,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: size.height * .3,
            height: size.height * .3,
            alignment: Alignment.bottomLeft,
            child: Text(
              widget.item.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: size.height * .3,
            height: size.height * .3,
            alignment: Alignment.topRight,
            child: Container(
              width: size.width * .1,
              height: size.width * .1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  size.width,
                ),
                color: Colors.white,
              ),
              child: IconButton(
                icon: Icon(
                  widget.item.status ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red[400]!,
                ),
                onPressed: () {
                  widget.item.status = !widget.item.status;
                  setState(() {});
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
