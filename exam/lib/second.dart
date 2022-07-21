import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  var photos = [
    "https://www.pronovias.com/media/catalog/product/e/l/elcira_d.jpg?quality=80&bg-color=255,255,255&fit=bounds&height=&width=&canvas=:",
    "https://www.brides.com/thmb/KdI5ooB72uJ3yccVzOS1JfWjqk4=/871x0/filters:no_upscale():max_bytes(150000):strip_icc():gifv():format(webp)/TB-LisaPoggi096-47400385cd114125b749df5b466deadf.jpg",
    "https://i.pinimg.com/736x/6f/d6/5d/6fd65d0e7aa150fb4cd52262a7bd6093.jpg",
    "https://i.pinimg.com/736x/41/09/e5/4109e51ab1f0aade350bcfead227761b.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.90),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0.10),
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 70),
          child: Row(
            children: [
              Icon(
                Icons.pin_drop_outlined,
                color: Colors.black,
              ),
              Text(
                "Indonesia",
                style: TextStyle(color: Colors.black),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.notification_add_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.search),
                      Text(
                        "Wedding Dress",
                        style: TextStyle(fontSize: 19),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: photos.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.40,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: NetworkImage(photos[index]),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Dress",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "\$120",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.redAccent),
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                height: MediaQuery.of(context).size.height * 0.40,
                child: Column(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "images/b.jpg",
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                                top: 10,
                                right: 20,
                                child: Container(
                                  height: 40,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            size: 19,
                                            color: Colors.redAccent,
                                          ),
                                          Text(
                                            "20k",
                                            style: TextStyle(fontSize: 16),
                                          )
                                        ]),
                                  ),
                                )),
                            Positioned(
                                bottom: 0,
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color:
                                          Colors.transparent.withOpacity(0.60),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(
                                              "Weding Vanue",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.pin_drop_outlined,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "Lamongan,East Java",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 155),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.greenAccent,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Icon(Icons.plus_one),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.redAccent,
                            ),
                            Icon(
                              Icons.heart_broken,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.text_fields,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.portable_wifi_off_outlined,
                              color: Colors.black,
                            ),
                          ],
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
