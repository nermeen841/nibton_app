import 'package:flutter/material.dart';
import 'package:nibton_app/all%20Product/all_products.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/components/productCard.dart';
import 'package:nibton_app/home/componnent/section_title.dart';

class SimilarProduct extends StatefulWidget {
  const SimilarProduct({Key? key}) : super(key: key);

  @override
  _SimilarProductState createState() => _SimilarProductState();
}

class _SimilarProductState extends State<SimilarProduct> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SectionTitle(
            title: "Similar Product",
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => AllProducts()))),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: ListView.separated(
                primary: true,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const ProductCard(),
                separatorBuilder: (context, index) => spaceW(10),
                itemCount: 10)),
      ],
    );
  }
}
