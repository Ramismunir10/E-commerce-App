import 'package:flutter/material.dart';

class CustomBeverages extends StatelessWidget {
  final String name;
  final double iwidth;
  final double iHeight;
  final String bevImage;
  final String quantity;
  final String price;

  const CustomBeverages(
      {super.key,
      required this.name,
      required this.iwidth,
      required this.iHeight,
      required this.bevImage,
      required this.quantity,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11),
      child: Container(
        width: 173,
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
                width: iwidth,
                height: iHeight,
                child: Image.asset(bevImage),
              ),
            ),
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              quantity,
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
                  Text(
                    price,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(17),
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
            ),
          ],
        ),
      ),
    );
  }
}
