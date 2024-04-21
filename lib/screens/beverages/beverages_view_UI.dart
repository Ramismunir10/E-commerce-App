import 'package:ecommerceapp/screens/Explore/explore_view_UI.dart';
import 'package:ecommerceapp/screens/beverages/beverages_view_model_logic.dart';
import 'package:ecommerceapp/utils/app_images.dart';
import 'package:flutter/material.dart';

class Beverages extends StatelessWidget {
  const Beverages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Add your onPressed logic here
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ExploreScreen()),
            );
          },
        ),
        title: const Center(child: Text('Beverages')),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.filter_alt_outlined),
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
        ],
        // Other properties of the AppBar
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          // Return a Row with two rectangle containers arranged horizontally
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBeverages(
                    name: 'Diet Coke             ',
                    iwidth: 45,
                    iHeight: 84,
                    bevImage: AppImages.dietcoke,
                    quantity: '355ml, Price             ',
                    price: '\$1.99',
                  ),
                  CustomBeverages(
                    name: 'Sprite Can            ',
                    iwidth: 52,
                    iHeight: 84,
                    bevImage: AppImages.spritecan,
                    quantity: '325ml, Price             ',
                    price: '\$1.50',
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBeverages(
                      name: 'Apple & Grape Juice',
                      iwidth: 89,
                      iHeight: 84,
                      bevImage: AppImages.applegrapejuice,
                      quantity: '2L, Price                         ',
                      price: '\$15.99'),
                  CustomBeverages(
                      name: 'Orange Juice',
                      iwidth: 89,
                      iHeight: 84,
                      bevImage: AppImages.orangejuice,
                      quantity: '2L, Price                         ',
                      price: '\$4.99')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBeverages(
                      name: 'Coca Cola Can     ',
                      iwidth: 89,
                      iHeight: 84,
                      bevImage: AppImages.cocacolacan,
                      quantity: '325ml, Price             ',
                      price: '\$4.99'),
                  CustomBeverages(
                      name: 'Pepsi Can            ',
                      iwidth: 84,
                      iHeight: 89,
                      bevImage: AppImages.pepsican,
                      quantity: '330ml, Price            ',
                      price: '\$4.99')
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

// ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: 5,
//           itemBuilder: (context, index) {
//             return Container(
//               margin: EdgeInsets.only(bottom: 10),
//               width: 5,
//               height: 50,
//               color: Colors.amber,
//             );
//           }),