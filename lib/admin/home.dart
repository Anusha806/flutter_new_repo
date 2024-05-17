// // import 'package:flutter/material.dart';
// //
// // class Home extends StatefulWidget {
// //   const Home({super.key});
// //
// //   @override
// //   State<Home> createState() => _HomeState();
// // }
// //
// // class _HomeState extends State<Home> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Home"),
// //         centerTitle: true,
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
//
// class HomeScreenSmall extends StatefulWidget {
//   const HomeScreenSmall({super.key});
//
//   @override
//   State<HomeScreenSmall> createState() => _HomeScreenSmallState();
// }
//
// class _HomeScreenSmallState extends State<HomeScreenSmall> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'DakshHire', // Replace with your app name
//           style: TextStyle(fontSize: 20.0),
//
//         ),
//       ),
//       body: ListView(
//         children:
//         <Widget>[
//           SizedBox(height: 30.0),
//           const FeaturedSection(),
//           const SizedBox(height: 20.0),
//           const _SectionTitle(title: 'Categories'),
//           const SizedBox(height: 10.0),
//           const _GenreSection(),
//           const SizedBox(height: 20.0),
//           const _SectionTitle(title: 'Recently Added'),
//           const SizedBox(height: 20.0),
//           const _NewSection(),
//         ],
//
//       ),
//     );
//   }
// }
//
// class _SectionTitle extends StatelessWidget {
//   final String title;
//   const _SectionTitle({required this.title});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 20.0,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class FeaturedSection extends StatelessWidget {
//   const FeaturedSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 200.0,
//       child: Center(
//         child: ListView.builder(
//           primary: false,
//           padding: const EdgeInsets.symmetric(horizontal: 15.0),
//           scrollDirection: Axis.horizontal,
//           itemCount: 5, // Replace with the number of items you want to display
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
//               child: BookCard(
//                 img: 'path/to/image', // Replace with your image path
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class _GenreSection extends StatelessWidget {
//   const _GenreSection();
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 50.0,
//       child: Center(
//         child: ListView.builder(
//           primary: false,
//           padding: const EdgeInsets.symmetric(horizontal: 15.0),
//           scrollDirection: Axis.horizontal,
//           itemCount: 5, // Replace with the number of categories you want to display
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Theme.of(context).colorScheme.secondary,
//                   borderRadius: const BorderRadius.all(Radius.circular(20.0)),
//                 ),
//                 child: InkWell(
//                   borderRadius: const BorderRadius.all(Radius.circular(20.0)),
//                   onTap: () {
//                     // Handle category tap
//                   },
//                   child: Center(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                       child: Text(
//                         'Category', // Replace with your category title
//                         style: const TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class _NewSection extends StatelessWidget {
//   const _NewSection();
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       primary: false,
//       padding: const EdgeInsets.symmetric(horizontal: 15.0),
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       itemCount: 5, // Replace with the number of new items you want to display
//       itemBuilder: (BuildContext context, int index) {
//         return Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
//           child: BookListItem(
//             img: 'path/to/image', // Replace with your image path
//             title: 'Book Title', // Replace with your book title
//           ),
//         );
//       },
//     );
//   }
// }
//
// class BookCard extends StatelessWidget {
//   final String img;
//
//   const BookCard({super.key, required this.img});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100.0,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         image: DecorationImage(
//           image: AssetImage(img), // Replace with your image asset path
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }
//
// class BookListItem extends StatelessWidget {
//   final String img;
//   final String title;
//
//   const BookListItem({super.key, required this.img, required this.title});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Image.asset(img, fit: BoxFit.cover), // Replace with your image asset path
//       title: Text(title), // Replace with your book title
//       onTap: () {
//         // Handle book list item tap
//       },
//     );
//   }
// }
//
import 'package:flutter/material.dart';
import '../util/categories.dart';
import '../util/friends.dart';
import '../util/restaurants.dart';
import '../widgets/categoryitem.dart';
import '../widgets/search_card.dart';
import '../widgets/slide_item.dart';
import '../widgets/trending_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
          child: ListView(
            children: <Widget>[
              buildSearchBar(context),
              SizedBox(height: 20.0),
              buildRestaurantRow('Trending Restaurants', context),
              SizedBox(height: 10.0),
              buildRestaurantList(context),
              SizedBox(height: 10.0),
              buildCategoryRow('Category', context),
              SizedBox(height: 10.0),
              buildCategoryList(context),
              SizedBox(height: 20.0),
              buildCategoryRow('Friends', context),
              SizedBox(height: 10.0),
              buildFriendsList(),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRestaurantRow(String restaurant, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          restaurant,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          onPressed: () {
            // Replace TrendingScreen() with your screen widget
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Home(),
              ),
            );
          },
          child: Text(
            "See all (9)",
            style: TextStyle(
              // color: Theme.of(context).accentColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCategoryRow(String category, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          category,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          onPressed: () {
            // Replace CategoriesScreen() with your screen widget
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Home(),
              ),
            );
          },
          child: Text(
            "See all (9)",
            style: TextStyle(
              // color: Theme.of(context).accentColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSearchBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: SearchCard(),
    );
  }

  Widget buildCategoryList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      child: ListView.builder(
        primary: false,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories == null ? 0 : categories.length,
        itemBuilder: (BuildContext context, int index) {
          Map cat = categories[index];

          return CategoryItem(
            cat: cat,
          );
        },
      ),
    );
  }

  Widget buildRestaurantList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: restaurants == null ? 0 : restaurants.length,
        itemBuilder: (BuildContext context, int index) {
          Map restaurant = restaurants[index];

          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            // child: SlideItem(
            //   img: restaurant["img"],
            //   title: restaurant["title"],
            //   address: restaurant["address"],
            //   rating: restaurant["rating"],
            // ),
          );
        },
      ),
    );
  }

  Widget buildFriendsList() {
    return Container(
      height: 50.0,
      child: ListView.builder(
        primary: false,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: friends == null ? 0 : friends.length,
        itemBuilder: (BuildContext context, int index) {
          String img = friends[index];

          return Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                img,
              ),
              radius: 25.0,
            ),
          );
        },
      ),
    );
  }
}
