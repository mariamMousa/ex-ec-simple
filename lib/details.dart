import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  final data;
  const ItemDetails({super.key, this.data});

  @override
  State<ItemDetails> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          selectedItemColor: Colors.orange,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "*"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "*"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "*"),
          ]),
      endDrawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.grey[200],
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shop_outlined,
              color: Colors.black,
            ),
            Text(" Ecommerce "),
            Text(
              " Mariam ",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: ListView(children: [
        const Padding(padding: EdgeInsets.all(10)),
        Image.asset(
          widget.data['image'],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            widget.data["title"],
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            widget.data["subtitle"],
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 20),
          child: Text(
            widget.data["price"],
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.orange),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Color:",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.orange),
                color: Colors.grey,
              ),
            ),
            const Text(" Grey"),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
            ),
            const Text(" Black"),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
          color: Colors.black,
          child: MaterialButton(
            padding: EdgeInsets.symmetric(vertical: 20),
            onPressed: () {},
            child: const Text(
              "Add To Card",
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ]),
    );
  }
}
