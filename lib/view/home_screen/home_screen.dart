import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app_api/dummy_db.dart';
import 'package:news_app_api/view/search_screen/search_screen.dart';
import 'package:news_app_api/view/utils/colorconstant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int clickedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(
          "News App",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchScreen(),
                  ),
                );
              },
              child: Icon(
                Icons.search,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    DummyDb.categoryList.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            clickedIndex = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: clickedIndex == index
                                ? Colorconstant.PRIMARY
                                : Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 1.5,
                              color: Colorconstant.PRIMARY,
                            ),
                          ),
                          child: Text(
                            DummyDb.categoryList[index],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: clickedIndex == index
                                  ? Colors.white
                                  : Colorconstant.PRIMARY,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 35),

              CarouselSlider.builder(
                itemCount: 8,
                options: CarouselOptions(
                  height: 189,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                itemBuilder: (context, index, realIndex) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Latest News",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 25),

              SizedBox(
                height: 600, 
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Container(
                        color: Colors.grey,
                        height: 100,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              height: 100,width: 100,
                              color: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text("data",
                            style: TextStyle(
                              fontSize: 18
                            ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
