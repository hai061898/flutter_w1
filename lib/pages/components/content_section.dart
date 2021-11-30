// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:w_1/models/product_model.dart';
import 'package:w_1/pages/components/product.dart';
import 'package:w_1/pages/components/search_box.dart';
import 'package:w_1/utils/color.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:w_1/utils/responsive.dart';

import 'sidebar.dart';

class ContentSection extends StatelessWidget {
  const ContentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(20.0)),
            child: SearchBox(),
          ),
          SizedBox(
            height: 30,
          ),
          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            crossAxisCount: 2,
            itemCount: products.length,
            itemBuilder: (context, index) => Products(
              product: products[index],
            ),
            staggeredTileBuilder: (index) =>
                MediaQuery.of(context).size.width >= 530
                    ? StaggeredTile.fit(1)
                    : StaggeredTile.fit(2),
          ),
          SizedBox(
            height: 30,
          ),
           if (!Responsive.isDesktop(context)) SideBar()
        ],
      ),
    );
  }
}
