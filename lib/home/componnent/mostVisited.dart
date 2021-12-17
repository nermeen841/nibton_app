import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/components/productCard.dart';
import 'package:nibton_app/productDetail/product_detail.dart';

// ignore: use_key_in_widget_constructors
class MostVisitedProducts extends StatefulWidget {
  @override
  _MostVisitedProductsState createState() => _MostVisitedProductsState();
}

class _MostVisitedProductsState extends State<MostVisitedProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ListView.separated(
          shrinkWrap: true,
          primary: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
                child: const ProductCard(),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductDetailScreen())),
              ),
          separatorBuilder: (context, index) => spaceW(10),
          itemCount: 10),
    );
  }
}
