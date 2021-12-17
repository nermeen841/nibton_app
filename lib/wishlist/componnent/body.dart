import 'package:flutter/material.dart';
import 'package:nibton_app/components/wishlist_item.dart';
import 'package:nibton_app/productDetail/product_detail.dart';

// ignore: use_key_in_widget_constructors
class WishlistBody extends StatefulWidget {
  @override
  _WishlistBodyState createState() => _WishlistBodyState();
}

class _WishlistBodyState extends State<WishlistBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      children: [
        GridView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 10,
                childAspectRatio: 0.55),
            itemBuilder: (context, index) => InkWell(
                  child: WishlistItem(),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetailScreen())),
                )),
      ],
    );
  }
}
