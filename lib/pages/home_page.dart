import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItems = [
    "assets/images/image_1.jpeg",
    "assets/images/image_2.jpg",
    "assets/images/image_3.png",
    "assets/images/image_4.jpg",
    "assets/images/image_5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Apple Products",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: const Icon(
          Icons.menu,
          size: 28,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 32,
              width: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              child: const Center(
                child: Text(
                  "7",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(20),
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage(
                    "assets/images/image_4.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Lifestyle sale",
                    style: TextStyle(color: Colors.white, fontSize: 34),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        "Shop Now",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              // itemExtent: 2,
              padding: EdgeInsets.all(8),
              children: _listItems.map((item) => getImage(item)).toList(),
              
            ),
          ),
        ],
      ),
    );
  }

  Widget getImage(String item) {
    return Container(
      padding:const EdgeInsets.all(12),
      alignment: Alignment.topRight,
      margin:const EdgeInsets.all(12),
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(item),
        ),
      ),
      child: Icon(CupertinoIcons.heart_fill,
        size: 40,
        color: Colors.red,
      ),
    );
  }
}
