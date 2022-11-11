import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailBottomNav extends StatefulWidget {
  const ProductDetailBottomNav({Key? key}) : super(key: key);

  @override
  _ProductDetailBottomNavState createState() => _ProductDetailBottomNavState();
}

class _ProductDetailBottomNavState extends State<ProductDetailBottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 65,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3)),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '\$120',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C53A5)),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.cart),
              label: const Text(
                'Add Cart',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF4C53A5)),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 11, horizontal: 15),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
