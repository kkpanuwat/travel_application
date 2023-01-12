import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.blue[200]!,
                offset: const Offset(0.0, 4.0),
                blurRadius: 2.0,
              ),
            ],
            gradient: LinearGradient(
              colors: [
                Colors.blue[600]!,
                Colors.blue[400]!,
              ],
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Text(
            "K",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        )
      ],
    );
  }
}
