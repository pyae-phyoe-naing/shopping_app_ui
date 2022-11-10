import 'package:flutter/material.dart';

import '../widget/categories_item_widget.dart';
import '../widget/home_app_bar.dart';
import '../widget/products_item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
            // height: 500, // tempory height
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                // --------- Search Area ------//
                Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search here...'),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Color(0xFF4C53A5),
                      )
                    ],
                  ),
                ),
                // -------- Category ----- //
                // -------- Category Title ----- //
                Container(
                  alignment: Alignment.centerLeft,
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: const Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5)),
                  ),
                ),
                // -------- Category List ----- //
                const CategoriesItemWidget(),
                // -------- Product Title ----- //
                Container(
                  alignment: Alignment.centerLeft,
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: const Text(
                    'All Products',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
                // -------- Product Item List ----- //
                const ProductsItemWidget(),
              ],
            ),
          )
        ],
      ),
      // --- Bottom Navigation Bar --- //
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () => Navigator.pushNamed(context, '/'),
                child: const Icon(Icons.home_outlined),),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favorite',
              backgroundColor: Colors.red),
          const BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Me',
              backgroundColor: Colors.red),
        ],
        selectedItemColor: const Color(0xFF4C53A5),
        currentIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
