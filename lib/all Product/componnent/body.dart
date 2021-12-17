import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibton_app/all%20Product/all_products.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/components/productCard.dart';
import 'package:nibton_app/components/product_list.dart';
import 'package:nibton_app/productDetail/product_detail.dart';

// ignore: use_key_in_widget_constructors
class AllproductBody extends StatefulWidget {
  @override
  _AllproductBodyState createState() => _AllproductBodyState();
}

class _AllproductBodyState extends State<AllproductBody>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          color: HexColor("#212224"),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: TabBar(
                    controller: tabController,
                    indicatorColor: HexColor("#212224"),
                    unselectedLabelColor: Colors.white,
                    labelColor: HexColor("#FF9000"),
                    tabs: [
                      SvgPicture.asset(
                        "assests/images/Group 202.svg",
                        width: 60,
                      ),
                      SvgPicture.asset(
                        "assests/images/Group 203.svg",
                        width: 60,
                      ),
                    ]),
              ),
              InkWell(
                onTap: () {
                  AllProducts.scaffoldKey.currentState?.openEndDrawer();
                },
                child: SvgPicture.asset("assests/images/filter.svg"),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: TabBarView(controller: tabController, children: [
                GridView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 10,
                            childAspectRatio: 0.55),
                    itemBuilder: (context, index) => InkWell(
                          child: const ProductCard(),
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailScreen())),
                        )),
                ListView.separated(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 10,
                    separatorBuilder: (context, index) => spaceH(20),
                    itemBuilder: (context, index) => InkWell(
                          child: ProductListItem(),
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailScreen())),
                        )),
              ])),
        ),
      ],
    );
  }
}
