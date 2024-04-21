import 'package:flutter/material.dart';

class Customhome extends StatelessWidget {
  final String itemname;
  final String homeImage;
  final String quantity;
  const Customhome({super.key, required this.itemname, required this.homeImage, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 249,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFE2E2E2), // Set the color of the border
          width: 2, // Set the width of the border
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: 100,
              height: 80,
              child: Image.asset(homeImage),
            ),
          ),
           Text(itemname,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
           Text(quantity,
            style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 14),
          ),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '\$4.99',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
