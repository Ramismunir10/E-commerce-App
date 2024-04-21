import 'package:ecommerceapp/screens/beverages/beverages_view_UI.dart';
import 'package:ecommerceapp/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Find Products',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: SizedBox(
                  height: 50,
                  width: 364,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
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
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 189,
                      width: 175,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(color: Color(0xFFE2E2E2), width: 2),
                          color: Color.fromRGBO(83, 177, 117, 0.1)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 111,
                              height: 75,
                              child: Image.asset(AppImages.fruitsvegetables),
                            ),
                            const SizedBox(
                              height: 18,
                              width: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 10),
                              child: Text(
                                'Fresh Fruits     & Vegetables',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 189,
                      width: 175,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color(0xFFE2E2E2), width: 2),
                        color: const Color.fromRGBO(248, 164, 76, 0.7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 111,
                              height: 75,
                              child: Image.asset(AppImages.cookingoil),
                            ),
                            const SizedBox(
                              height: 18,
                              width: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 10),
                              child: Text(
                                'Cooking Oil      & Ghee',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 189,
                      width: 175,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color(0xFFE2E2E2), width: 2),
                        color: const Color.fromRGBO(247, 165, 147, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 111,
                              height: 75,
                              child: Image.asset(AppImages.meatfish),
                            ),
                            const SizedBox(
                              height: 18,
                              width: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 10),
                              child: Text(
                                'Meat & Fish',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 189,
                      width: 175,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color(0xFFE2E2E2), width: 2),
                        color: const Color.fromRGBO(211, 176, 224, 0.25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 111,
                              height: 75,
                              child: Image.asset(AppImages.bakerySnacks),
                            ),
                            const SizedBox(
                              height: 18,
                              width: 20,
                            ),
                            const Text(
                              'Bakery & Snacks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 189,
                      width: 175,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color(0xFFE2E2E2), width: 2),
                        color: const Color.fromRGBO(253, 229, 152, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 111,
                              height: 75,
                              child: Image.asset(AppImages.dairyeggs),
                            ),
                            const SizedBox(
                              height: 18,
                              width: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 10),
                              child: Text(
                                'Dairy & Eggs',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the new page when the container is clicked
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Beverages()),
                        );
                      },
                      child: Container(
                        height: 189,
                        width: 175,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color(0xFFE2E2E2), width: 2),
                          color: const Color.fromRGBO(183, 223, 245, 0.25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 111,
                                height: 75,
                                child: Image.asset(AppImages.beverages),
                              ),
                              const SizedBox(
                                height: 18,
                                width: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0, right: 10),
                                child: Text(
                                  'Beverages',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 189,
                      width: 175,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color(0xFFE2E2E2), width: 2),
                        color: const Color.fromRGBO(131, 106, 246, 0.5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 111,
                              height: 75,
                              child: Image.asset(AppImages.fruitsvegetables),
                            ),
                            const SizedBox(
                              height: 18,
                              width: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 10),
                              child: Text(
                                'Fresh Fruits     & Vegetables',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 189,
                      width: 175,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color(0xFFE2E2E2), width: 2),
                        color: const Color.fromRGBO(215, 59, 119, 0.5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 111,
                              height: 75,
                              child: Image.asset(AppImages.fruitsvegetables),
                            ),
                            const SizedBox(
                              height: 18,
                              width: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 10),
                              child: Text(
                                'Fresh Fruits     & Vegetables',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.breakfast_dining_outlined,
                  color: Colors.black,
                ),
                label: 'Shop'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.find_in_page_outlined,
                  color: Color.fromARGB(255, 133, 40, 40),
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
        ),
      ),
    );
  }
}
