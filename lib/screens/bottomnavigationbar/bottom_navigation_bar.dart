import 'package:ecommerceapp/screens/Account/account_view_UI.dart';
import 'package:ecommerceapp/screens/Explore/explore_view_UI.dart';
import 'package:ecommerceapp/screens/favourite/favourite_view_UI.dart';
import 'package:ecommerceapp/screens/home/home_view_UI.dart';
import 'package:flutter/material.dart';

class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar({super.key});

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => homescreen()));
            },
            style: ElevatedButton.styleFrom(elevation: 0),
            child: const Icon(
              Icons.home_outlined,
              size: 30,
              color: Colors.black,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ExploreScreen()));
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
            ),
            child: const Icon(
              Icons.manage_search_rounded,
              size: 30,
              color: Colors.black,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FavouriteScreen()));
            },
            style: ElevatedButton.styleFrom(elevation: 0),
            child: const Icon(
              Icons.shopping_cart_outlined,
              size: 30,
              color: Colors.black,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccountScreen()));
            },
            style: ElevatedButton.styleFrom(elevation: 0),
            child: Icon(
              Icons.favorite_border_outlined,
              size: 30,
              color: Colors.black,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(elevation: 0),
            child: const Icon(
              Icons.account_circle_outlined,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}