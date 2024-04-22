import 'package:ecommerceapp/screens/Account/account_view_UI.dart';
import 'package:ecommerceapp/screens/Exclusive%20Offer/redapple.dart';
import 'package:ecommerceapp/screens/Explore/explore_view_UI.dart';
import 'package:ecommerceapp/screens/cart/cart_view_UI.dart';
import 'package:ecommerceapp/screens/favourite/favourite_view_UI.dart';
import 'package:ecommerceapp/screens/home/home_view_model_logic.dart';
import 'package:ecommerceapp/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildScreen(_selectedIndex);
  }

  Widget _buildScreen(int index) {
    switch (index) {
      case 0:
        return ShopScreen();
      case 1:
        return ExploreScreen();
      case 2:
        return CartScreen();
      case 3:
        return FavouriteScreen();
      case 4:
        return AccountScreen();
      default:
        return ShopScreen();
    }
  }

  //ignore: non_constant_identifier_names
  ShopScreen() {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset(AppImages.carrot),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    size: 15,
                  ),
                  Text(
                    'Dhaka, Banassre',
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(12),
                child: SizedBox(
                  height: 50,
                  width: 364,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        size: 30,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 115,
                  width: 368,
                  child: Image.asset(AppImages.banner),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 12, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Exlusive Offer',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See all',
                        style:
                            TextStyle(color: Color(0xFF53B175), fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Customhome(
                          itemname: 'Organic Banana',
                          homeImage: AppImages.organicbanana,
                          quantity: '7pcs, Priceg          '),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the new page when the container is clicked
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NaturalRedApple()),
                          );
                        },
                        child: Customhome(
                            itemname: 'Red Apple          ',
                            homeImage: AppImages.redapple,
                            quantity: '1kg, Priceg             '),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Customhome(
                          itemname: 'Organic Banana',
                          homeImage: AppImages.organicbanana,
                          quantity: '7pcs, Priceg            '),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 12, bottom: 12, top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Best Selling',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See all',
                        style:
                            TextStyle(color: Color(0xFF53B175), fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Customhome(
                          itemname: 'Bell Pepper Red',
                          homeImage: AppImages.bellpepperred,
                          quantity: '1kg, Priceg            '),
                      const SizedBox(
                        width: 20,
                      ),
                      Customhome(
                          itemname: 'Ginger                ',
                          homeImage: AppImages.ginger,
                          quantity: '250gm, Priceg       '),
                      const SizedBox(
                        width: 20,
                      ),
                      Customhome(
                          itemname: 'Bell Pepper Red',
                          homeImage: AppImages.bellpepperred,
                          quantity: '1kg, Priceg            '),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 12, bottom: 12, top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Groceries',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See all',
                        style:
                            TextStyle(color: Color(0xFF53B175), fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 105,
                        width: 248,
                        //color: Color(0xFFF8A44C),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(248, 164, 76, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 72,
                                width: 72,
                                child: Image.asset(AppImages.pulses),
                              ),
                              const Text(
                                '  Pulses',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 105,
                        width: 248,
                        //color: Color(0xFFF8A44C),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(83, 177, 117, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 72,
                                width: 72,
                                child: Image.asset(AppImages.rice),
                              ),
                              const Text(
                                ' Rice',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Customhome(
                          itemname: 'Beef Bone         ',
                          homeImage: AppImages.beefbone,
                          quantity: '1kg, Priceg            '),
                      const SizedBox(
                        width: 20,
                      ),
                      Customhome(
                          itemname: 'Boiler Chicken',
                          homeImage: AppImages.boilerchicken,
                          quantity: '1kg, Priceg             '),
                      const SizedBox(
                        width: 20,
                      ),
                      Customhome(
                          itemname: 'Beef Bone',
                          homeImage: AppImages.beefbone,
                          quantity: '1kg, Priceg            '),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.breakfast_dining_outlined,
                color: Colors.yellow,
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.find_in_page_outlined,
                  color: Colors.black,
                ),
                label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                ),
                label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                ),
                label: 'Account'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black87,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}



//  _buildScreen(_selectedIndex),