import 'package:ec/details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List categories = [
    {"iconname": Icons.laptop, "title": "Laptop"},
    {"iconname": Icons.phone_android_rounded, "title": "Phone"},
    {"iconname": Icons.card_giftcard_outlined, "title": "Gifts"},
    {"iconname": Icons.electric_bike, "title": "Bike"},
    {"iconname": Icons.electric_bike, "title": "Bike"},
  ];
  List items = [
    {
      "image": "assets/images/R (1).png",
      "title": "Watch 453",
      "subtitle": "description",
      "price": "552\$"
    },
    {
      "image": "assets/images/5a386cc768e890.6205553215136473034297.png",
      "title": "Watch 512",
      "subtitle": "description",
      "price": "399\$"
    },
    {
      "image": "assets/images/pngwing.com (1).png",
      "title": "Bick 453",
      "subtitle": "description",
      "price": "952\$"
    },
    {
      "image": "assets/images/pngwing.com.png",
      "title": "Bick 512",
      "subtitle": "description",
      "price": "800\$"
    }
  ];

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
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search",
                    border: InputBorder.none,
                    fillColor: Colors.orange[200],
                    filled: true,
                  ),
                )),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.menu,
                    size: 40,
                  ),
                )
              ],
            ),
            Container(
              height: 30,
            ),
            const Text(
              "Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 20,
            ),
            Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (content, i) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: Column(children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[200],
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            categories[i]["iconname"],
                            size: 40,
                          ),
                          padding: const EdgeInsets.all(15),
                        ),
                        Text(
                          categories[i]["title"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[800]),
                        )
                      ]),
                    );
                  },
                )),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                "Best Selling",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 230),
              itemCount: items.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ItemDetails(data: items[i])))
                  },
                  child: Card(
                    child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            // width: 150,
                            color: Colors.grey[200],
                            child: Image.asset(items[i]["image"],
                                height: 100, fit: BoxFit.fill),
                          ),
                          Text(
                            items[i]["title"],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            items[i]["subtitle"],
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            items[i]["price"],
                            style:
                                TextStyle(fontSize: 14, color: Colors.orange),
                          ),
                        ]),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
