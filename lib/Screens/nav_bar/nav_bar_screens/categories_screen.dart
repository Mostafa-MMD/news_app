import 'package:flutter/material.dart';
import '../../../Models/category_news_model.dart';
import '../../../Widgets/custom_appbar.dart';
import '../../../Widgets/custom_category.dart';

class CategoriesScreen extends StatelessWidget {
  static String categoriesScreenRoute = 'categoriesScreen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: CustomApp2(title: 'Categories'),
          // child: CustomAppBar(
          //   title: 'Categories',
          //   colorTitle: Colors.black,
          // ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: allNewsCategories.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              childAspectRatio: 7 / 7, // childAspectRatio: 7 / 8,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              return InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => ,
                  //     ));
                },
                child: CustomCategory(
                  categoryNewsModel: allNewsCategories[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

// This Is Decoration Categories Screen
/*
class DecorationCategoriesScreen extends StatelessWidget {
  static String decorationCategoriesScreenRoute =
      'decorationCategoriesScreenRoute';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: CustomAppBar(
            leadingIcon: Icons.arrow_back,
            leadingFunction: () {
              Navigator.pop(context);
            },
            title: 'Categories',
            colorTitle: Colors.black,
          ),
        ),
        body: Container(
          color: Colors.blue[800],
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '15 Categories For You',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GridView.builder(
                        itemCount: allNewsCategories.length,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200.0,
                          childAspectRatio: 1,
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 10.0,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {},
                            child: CustomCategory(
                              categoryNewsModel: allNewsCategories[index],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/