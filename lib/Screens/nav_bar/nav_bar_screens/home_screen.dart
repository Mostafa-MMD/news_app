import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../Models/category_news_model.dart';
import '../../../Models/data_news_model.dart';
import '../../../Widgets/custom_appbar.dart';
import '../../../Widgets/custom_cart_categories_with_slider_home_screen.dart';
import '../../../Widgets/custom_cart_home_screen.dart';
import '../../details_news_screen.dart';

class HomeScreen extends StatefulWidget {
  static String homeRoute = 'homeRoute';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('News App'),
        // ),
        // drawer: Container(
        //   width: MediaQuery.of(context).size.width / 1.25,
        //   child: Drawer(
        //     child: Column(
        //       children: [
        //         SizedBox(
        //           height: 30,
        //         ),
        //         DrawerHeader(
        //           child: Container(
        //               height: 142,
        //               width: MediaQuery.of(context).size.width,
        //               child: Image.network(
        //                 "https://static.vecteezy.com/system/resources/previews/000/198/210/original/breaking-news-background-with-earth-planet-vector.jpg",
        //               )),
        //           decoration: BoxDecoration(
        //             color: Colors.transparent,
        //           ),
        //         ),
        //         SizedBox(
        //           height: 20,
        //         ),
        //         GestureDetector(
        //           onTap: () {
        //             setState(() {
        //               currentScreenIndex = 2;
        //             });
        //             Navigator.of(context).pop();
        //           },
        //           child: Text(
        //             'Profile',
        //             style: TextStyle(
        //               fontFamily: 'Avenir',
        //               fontSize: 24,
        //               fontWeight: FontWeight.w700,
        //             ),
        //             textAlign: TextAlign.center,
        //           ),
        //         ),
        //         SizedBox(
        //           height: 45,
        //         ),
        //         GestureDetector(
        //           onTap: () {
        //             setState(() {
        //               currentScreenIndex = 3;
        //             });
        //             Navigator.of(context).pop();
        //           },
        //           child: Text(
        //             'Settings',
        //             style: TextStyle(
        //               fontFamily: 'Avenir',
        //               fontSize: 24,
        //               fontWeight: FontWeight.w700,
        //             ),
        //             textAlign: TextAlign.center,
        //           ),
        //         ),
        //         SizedBox(
        //           height: 45,
        //         ),
        //         Text(
        //           'About',
        //           style: TextStyle(
        //             fontFamily: 'Avenir',
        //             fontSize: 24,
        //             fontWeight: FontWeight.w700,
        //           ),
        //           textAlign: TextAlign.center,
        //         ),
        //         SizedBox(
        //           height: 45,
        //         ),
        //         Text(
        //           'Log Out',
        //           style: TextStyle(
        //             fontFamily: 'Avenir',
        //             fontSize: 24,
        //             fontWeight: FontWeight.w700,
        //           ),
        //           textAlign: TextAlign.center,
        //         ),
        //         SizedBox(
        //           height: 45,
        //         ),
        //         Material(
        //           borderRadius: BorderRadius.circular(500),
        //           child: InkWell(
        //             borderRadius: BorderRadius.circular(500),
        //             splashColor: Colors.black45,
        //             onTap: () {
        //               Navigator.of(context).pop();
        //             },
        //             child: CircleAvatar(
        //               radius: 20,
        //               backgroundColor: Colors.black,
        //               child: Icon(Icons.arrow_back, color: Colors.white),
        //             ),
        //           ),
        //         ),
        //         Expanded(
        //             child: Align(
        //           alignment: Alignment.bottomCenter,
        //           child: Container(
        //             height: 65,
        //             width: MediaQuery.of(context).size.width,
        //             color: Colors.black,
        //             child: Center(
        //               child: Text(
        //                 'Created By Mohamed Ahmed',
        //                 style: TextStyle(
        //                   fontFamily: 'Avenir',
        //                   fontSize: 20,
        //                   color: const Color(0xffffffff),
        //                 ),
        //                 textAlign: TextAlign.center,
        //               ),
        //             ),
        //           ),
        //         ))
        //       ],
        //     ),
        //   ),
        // ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          // child: CustomAppBar(
          //   title: 'News App',
          //   colorTitle: Colors.black,
          // ),
          child: CustomApp2(
            title: 'New App',
            colorTitle: Colors.black,
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 10.0),
          height: double.infinity, // provide a finite height
          child: Column(
            children: [
              SizedBox(
                height: 140,
                width: 360,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    aspectRatio: 15 / 10, //aspectRatio: 16 / 9,
                    //viewportFraction: 0.5,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true, //enlargeCenterPage: true,
                  ),
                  itemCount: allNewsCategories.length,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    return InkWell(
                      onTap: () {},
                      child: CustomCartCategoriesWithSliderHomeScreen(
                        categoryNewsModel: allNewsCategories[index],
                      ),
                    );
                  },
                  //scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: 10),
              Flexible(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  itemCount: allNews.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreen(newsModel: allNews[index]),
                            ));
                      },
                      child: CustomCartHomeScreen(
                        newsModel: allNews[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// this code after edit :

/*
import 'package:flutter/material.dart';
import '../Models/category_news_model.dart';
import '../Widgets/custom_cart_categories_home_screen.dart';
import '../Widgets/custom_cart_home_screen.dart';
import '../Models/data_news_model.dart';
import '../tests/test2 copy.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentScreenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width / 1.25,
        child: Drawer(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              DrawerHeader(
                child: Container(
                    height: 142,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      "https://static.vecteezy.com/system/resources/previews/000/198/210/original/breaking-news-background-with-earth-planet-vector.jpg",
                    )),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreenIndex = 2;
                  });
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Profile',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreenIndex = 3;
                  });
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Settings',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                'About',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                'Log Out',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 45,
              ),
              Material(
                borderRadius: BorderRadius.circular(500),
                child: InkWell(
                  borderRadius: BorderRadius.circular(500),
                  splashColor: Colors.black45,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'Created By Mohamed Ahmed',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
      body: Container(
        child: Container(
          height: double.infinity, // provide a finite height
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: ListView.builder(
                    itemCount: allNewsCategories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomCartCategoriesHomeScreen(
                        newsCategoriesModel: allNewsCategories[index],
                      );
                    }),
              ),
              Flexible(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  itemCount: allNews.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      newsModel: allNews[index],
                                    )));
                      },
                      child: CustomCartHomeScreen(
                        newsModel: allNews[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(milliseconds: 1000),
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_rounded),
            label: 'Settings',
          ),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentScreenIndex = index;
          });
        },
        selectedIndex: currentScreenIndex,
        backgroundColor: Colors.white,
        elevation: 10,
        surfaceTintColor: Colors.lime,
        //height: 40,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      ),
    );
  }
}
*/
