import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final slideImages = [
    "https://images.unsplash.com/photo-1581382575275-97901c2635b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
    "https://images.unsplash.com/photo-1485811661309-ab85183a729c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80",
    "https://images.unsplash.com/photo-1615886753866-79396abc446e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1533638842865-579068d17afe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=749&q=80",
  ];

  List<String> imageTexts = [
    "Sandals",
    "Western",
    "Traditional",
    "Women",
    "Men",
    "Kids",
    "Cosmetics",
  ];

  List<String> itemText = [
    "Top",
    "Kurthi",
    "Jean Top",
    "Heels",
    "Kurthi",
    "Shoes",
  ];

  List<String> itemRate = [
    "\$250",
    "\$150",
    "\$100",
    "\$350",
    "\$300",
    "\$200",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: CarouselSlider.builder(
                itemCount: slideImages.length,
                itemBuilder: (context, index, realIndex) {
                  final slideImage = slideImages[index];
                  return buildImage(slideImage, index);
                },
                options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    autoPlayInterval: Duration(seconds: 4))),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 6; i++)
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        bottom: BorderSide(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        right: BorderSide(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        left: BorderSide(
                          width: 1.0,
                          color: Colors.black,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/Images/Category/${i}.png",
                          width: 40,
                          height: 40,
                        ),
                        Text(
                          imageTexts[i],
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "All Time favourite",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 20,
          ),
          GridView.count(
            childAspectRatio: 0.68,
            crossAxisCount: 2,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              for (int i = 0; i < 6; i++)
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                      border: Border(
                        top: BorderSide(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        bottom: BorderSide(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        right: BorderSide(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        left: BorderSide(
                          width: 1.0,
                          color: Colors.black,
                        ),
                      )),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_cart_checkout_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "assets/Images/TrendItems/$i.png",
                            height: 120,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 8),
                        alignment: Alignment.center,
                        child: Text(
                          itemText[i],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(itemRate[i]),
                      )
                    ],
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildImage(String slideImage, int index) {
    return Container(
      width: 400,
      color: Colors.grey,
      child: Image.network(
        slideImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
