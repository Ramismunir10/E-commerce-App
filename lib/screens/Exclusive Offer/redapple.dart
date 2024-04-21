import 'package:ecommerceapp/screens/home/home_view_UI.dart';
import 'package:ecommerceapp/utils/app_images.dart';
import 'package:flutter/material.dart';

class NaturalRedApple extends StatelessWidget {
  const NaturalRedApple({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: InkWell(
                  onTap: () {
                    // Navigate to the new page when the container is clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homescreen()),
                    );
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.ios_share)),
                tileColor: const Color.fromRGBO(242, 243, 242, 1),
              ),
              Container(
                height: 291,
                width: 413,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(242, 243, 242, 1),
                  border: Border(
                    // Example border
                    left: BorderSide(
                      width: 2.0,
                      color: Color.fromRGBO(242, 243, 242, 1),
                    ), // Example border
                    right: BorderSide(
                      width: 2.0,
                      color: Color.fromRGBO(242, 243, 242, 1),
                    ),
                    // Example border
                  ),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(25),
                  ),
                ),
                child: Center(
                  child: SizedBox(
                    height: 200,
                    width: 329,
                    child: Image.asset(AppImages.applegrapejuice),
                  ),
                ),
              ),
              ListTile(
                title: Text('Natural Red Apple'),
                subtitle: Text('1kg, price'),
                trailing: InkWell(
                  onTap: () {},
                  child: Icon(Icons.favorite_outline),
                ),
              ),
              ListTile(
                leading: Icon(Icons.abc),
              )
            ],
          ),
        ),
      ),
    );
  }
}
