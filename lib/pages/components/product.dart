// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:w_1/models/product_model.dart';
import 'package:w_1/utils/color.dart';

class Products extends StatelessWidget {
  const Products({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: List.generate(
                  product.category.length,
                  (index) => Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: categoryList(index),
                      )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              product.title,
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              product.desc,
              style: TextStyle(
                height: 1.3,
                fontSize: 25,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container categoryList(int index) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        color: kcateColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Text(
        product.category[index],
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
