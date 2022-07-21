import 'package:exam/second.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "images/a.jpg",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Travel with ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "comfort and ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    " safety!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          backgroundColor: Colors.redAccent,
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Second(),
                        ));
                      },
                      child: Text("Sign up"))
                ],
              ),
            ))
      ],
    ));
  }
}
